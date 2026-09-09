package verimor_test

import (
	"context"
	"errors"
	"io"
	"net/http"
	"net/http/httptest"
	"strings"
	"sync/atomic"
	"testing"
	"time"

	sms "github.com/0Baris/verimor-sdk/packages/go/sms"
	switchsdk "github.com/0Baris/verimor-sdk/packages/go/switch"
	wa "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)

// wireResponse is deliberately the small common surface emitted by
// oapi-codegen response wrappers. It keeps these tests tied to the generated
// public contract, rather than inventing a cross-product error abstraction.
type wireResponse interface {
	GetBody() []byte
	StatusCode() int
}

type generatedProduct struct {
	name   string
	call   func(context.Context, string) (wireResponse, error)
	verify func(*testing.T, *http.Request)
}

func generatedProducts(t *testing.T) []generatedProduct {
	t.Helper()
	return []generatedProduct{
		{
			name: "sms",
			call: func(ctx context.Context, baseURL string) (wireResponse, error) {
				client, err := sms.NewClientWithResponses(baseURL)
				if err != nil {
					return nil, err
				}
				return client.GetV2BalanceWithResponse(ctx, &sms.GetV2BalanceParams{Username: "user", Password: "secret"})
			},
			verify: func(t *testing.T, request *http.Request) {
				t.Helper()
				if request.Method != http.MethodGet || request.URL.Path != "/v2/balance" {
					t.Errorf("unexpected SMS request: %s %s", request.Method, request.URL.Path)
				}
				if request.URL.Query().Get("username") != "user" || request.URL.Query().Get("password") != "secret" {
					t.Errorf("SMS credentials were not encoded in query: %s", request.URL.RawQuery)
				}
			},
		},
		{
			name: "switch",
			call: func(ctx context.Context, baseURL string) (wireResponse, error) {
				client, err := switchsdk.NewClientWithResponses(baseURL, switchsdk.WithRequestEditorFn(func(_ context.Context, request *http.Request) error {
					query := request.URL.Query()
					query.Set("key", "secret")
					request.URL.RawQuery = query.Encode()
					return nil
				}))
				if err != nil {
					return nil, err
				}
				return client.GetAnnouncementsWithResponse(ctx)
			},
			verify: func(t *testing.T, request *http.Request) {
				t.Helper()
				if request.Method != http.MethodGet || request.URL.Path != "/announcements" {
					t.Errorf("unexpected Switch request: %s %s", request.Method, request.URL.Path)
				}
				if request.URL.Query().Get("key") != "secret" {
					t.Errorf("Switch key was not encoded in query: %s", request.URL.RawQuery)
				}
			},
		},
		{
			name: "whatsapp",
			call: func(ctx context.Context, baseURL string) (wireResponse, error) {
				client, err := wa.NewClientWithResponses(baseURL)
				if err != nil {
					return nil, err
				}
				key := "secret"
				return client.SendOtpV1MessagesOtpPostWithResponse(ctx, &wa.SendOtpV1MessagesOtpPostParams{XApiKey: &key}, wa.TemplateMessageRequest{To: "905550000000", TemplateName: "otp"})
			},
			verify: func(t *testing.T, request *http.Request) {
				t.Helper()
				if request.Method != http.MethodPost || request.URL.Path != "/v1/messages/otp" {
					t.Errorf("unexpected WhatsApp request: %s %s", request.Method, request.URL.Path)
				}
				if request.Header.Get("x-api-key") != "secret" {
					t.Errorf("WhatsApp key was not encoded in header")
				}
				if !strings.Contains(request.Header.Get("Content-Type"), "application/json") {
					t.Errorf("WhatsApp body content type: %q", request.Header.Get("Content-Type"))
				}
			},
		},
	}
}

func TestGeneratedClientsPreserveAllRequiredHTTPErrorResponses(t *testing.T) {
	t.Parallel()
	type errorBody struct {
		name        string
		contentType string
		body        string
	}
	bodies := []errorBody{
		{name: "json", contentType: "application/json", body: `{"error":"denied"}`},
		{name: "text", contentType: "text/plain", body: "denied"},
		{name: "empty", contentType: "text/plain", body: ""},
		{name: "malformed_json", contentType: "application/json", body: "{broken"},
	}
	statuses := []int{http.StatusBadRequest, http.StatusUnauthorized, http.StatusForbidden, http.StatusNotFound, http.StatusTooManyRequests, http.StatusInternalServerError, http.StatusServiceUnavailable}

	for _, product := range generatedProducts(t) {
		for _, status := range statuses {
			for _, body := range bodies {
				product, status, body := product, status, body
				t.Run(product.name+"/"+http.StatusText(status)+"/"+body.name, func(t *testing.T) {
					t.Parallel()
					var calls atomic.Int32
					server := httptest.NewServer(http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
						calls.Add(1)
						product.verify(t, request)
						writer.Header().Set("Content-Type", body.contentType)
						writer.WriteHeader(status)
						_, _ = io.WriteString(writer, body.body)
					}))
					defer server.Close()

					response, err := product.call(context.Background(), server.URL)
					if err != nil {
						t.Fatalf("generated client returned transport/parse error for HTTP %d %s body: %v", status, body.name, err)
					}
					if response.StatusCode() != status {
						t.Fatalf("status = %d, want %d", response.StatusCode(), status)
					}
					if got := string(response.GetBody()); got != body.body {
						t.Fatalf("raw error body = %q, want %q", got, body.body)
					}
					if got := calls.Load(); got != 1 {
						t.Fatalf("requests = %d, want one (no retry)", got)
					}
				})
			}
		}
	}
}

func TestGeneratedClientsDocumentSuccessfulPayloadParsing(t *testing.T) {
	t.Parallel()
	type payloadCase struct {
		name    string
		body    string
		wantErr bool
	}
	for _, product := range []struct {
		name    string
		status  int
		call    func(context.Context, string) (wireResponse, error)
		verify  func(*testing.T, *http.Request)
		payload []payloadCase
	}{
		{
			name:   "sms_raw_balance",
			status: http.StatusOK,
			call: func(ctx context.Context, baseURL string) (wireResponse, error) {
				client, err := sms.NewClientWithResponses(baseURL)
				if err != nil {
					return nil, err
				}
				return client.GetV2BalanceWithResponse(ctx, &sms.GetV2BalanceParams{Username: "user", Password: "secret"})
			},
			verify: generatedProducts(t)[0].verify,
			payload: []payloadCase{
				{name: "empty", body: ""},
				{name: "malformed_json", body: "{broken"},
				{name: "wrong_json_type", body: "[]"},
				{name: "missing_fields", body: `{}`},
			},
		},
		{
			name:   "switch_announcements",
			status: http.StatusOK,
			call: func(ctx context.Context, baseURL string) (wireResponse, error) {
				client, err := switchsdk.NewClientWithResponses(baseURL, switchsdk.WithRequestEditorFn(func(_ context.Context, request *http.Request) error {
					query := request.URL.Query()
					query.Set("key", "secret")
					request.URL.RawQuery = query.Encode()
					return nil
				}))
				if err != nil {
					return nil, err
				}
				return client.GetAnnouncementsWithResponse(ctx)
			},
			verify: generatedProducts(t)[1].verify,
			payload: []payloadCase{
				{name: "empty", body: "", wantErr: true},
				{name: "malformed_json", body: "{broken", wantErr: true},
				{name: "wrong_json_type", body: `{}`, wantErr: true},
				{name: "missing_optional_fields", body: `[{}]`},
			},
		},
		{
			name:   "whatsapp_otp",
			status: http.StatusAccepted,
			call: func(ctx context.Context, baseURL string) (wireResponse, error) {
				client, err := wa.NewClientWithResponses(baseURL)
				if err != nil {
					return nil, err
				}
				key := "secret"
				return client.SendOtpV1MessagesOtpPostWithResponse(ctx, &wa.SendOtpV1MessagesOtpPostParams{XApiKey: &key}, wa.TemplateMessageRequest{To: "905550000000", TemplateName: "otp"})
			},
			verify: generatedProducts(t)[2].verify,
			payload: []payloadCase{
				{name: "empty", body: "", wantErr: true},
				{name: "malformed_json", body: "{broken", wantErr: true},
				{name: "wrong_json_type", body: `[]`, wantErr: true},
				{name: "missing_required_fields", body: `{}`},
			},
		},
	} {
		product := product
		for _, payload := range product.payload {
			payload := payload
			t.Run(product.name+"/"+payload.name, func(t *testing.T) {
				t.Parallel()
				var calls atomic.Int32
				server := httptest.NewServer(http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
					calls.Add(1)
					product.verify(t, request)
					writer.Header().Set("Content-Type", "application/json")
					writer.WriteHeader(product.status)
					_, _ = io.WriteString(writer, payload.body)
				}))
				defer server.Close()

				response, err := product.call(context.Background(), server.URL)
				if payload.wantErr {
					if err == nil {
						t.Fatal("generated parser accepted an invalid success payload")
					}
				} else {
					if err != nil {
						t.Fatalf("generated parser rejected documented raw/optional payload: %v", err)
					}
					if response == nil || string(response.GetBody()) != payload.body {
						t.Fatalf("response body = %q, want %q", response.GetBody(), payload.body)
					}
				}
				if got := calls.Load(); got != 1 {
					t.Fatalf("requests = %d, want one", got)
				}
			})
		}
	}
}

func TestGeneratedClientsDoNotRetryFailures(t *testing.T) {
	t.Parallel()
	for _, product := range generatedProducts(t) {
		for _, status := range []int{http.StatusTooManyRequests, http.StatusInternalServerError} {
			product, status := product, status
			t.Run(product.name+"/HTTP_"+http.StatusText(status), func(t *testing.T) {
				t.Parallel()
				var calls atomic.Int32
				server := httptest.NewServer(http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
					calls.Add(1)
					product.verify(t, request)
					writer.Header().Set("Content-Type", "application/json")
					writer.WriteHeader(status)
					_, _ = io.WriteString(writer, `{"error":"transient"}`)
				}))
				defer server.Close()

				response, err := product.call(context.Background(), server.URL)
				if err != nil || response.StatusCode() != status {
					t.Fatalf("unexpected result: response=%v err=%v", response, err)
				}
				if got := calls.Load(); got != 1 {
					t.Fatalf("requests = %d, want one", got)
				}
			})
		}
	}
}

func TestGeneratedClientsHonorContextCancellationWithoutRetry(t *testing.T) {
	t.Parallel()
	for _, product := range generatedProducts(t) {
		product := product
		t.Run(product.name, func(t *testing.T) {
			t.Parallel()
			var calls atomic.Int32
			started := make(chan struct{})
			server := httptest.NewServer(http.HandlerFunc(func(_ http.ResponseWriter, request *http.Request) {
				calls.Add(1)
				product.verify(t, request)
				close(started)
				<-request.Context().Done()
			}))
			defer server.Close()

			ctx, cancel := context.WithCancel(context.Background())
			defer cancel()
			result := make(chan error, 1)
			go func() {
				_, err := product.call(ctx, server.URL)
				result <- err
			}()
			select {
			case <-started:
				cancel()
			case <-time.After(time.Second):
				t.Fatal("server never received request")
			}
			select {
			case err := <-result:
				if !errors.Is(err, context.Canceled) {
					t.Fatalf("error = %v, want context.Canceled", err)
				}
			case <-time.After(time.Second):
				t.Fatal("generated client did not stop after cancellation")
			}
			if got := calls.Load(); got != 1 {
				t.Fatalf("requests = %d, want one", got)
			}
		})
	}
}

func TestGeneratedClientsDoNotRetryDeadlineOrConnectionAbort(t *testing.T) {
	t.Parallel()
	for _, product := range generatedProducts(t) {
		product := product
		t.Run(product.name+"/deadline", func(t *testing.T) {
			t.Parallel()
			var calls atomic.Int32
			server := httptest.NewServer(http.HandlerFunc(func(_ http.ResponseWriter, request *http.Request) {
				calls.Add(1)
				product.verify(t, request)
				<-request.Context().Done()
			}))
			defer server.Close()
			ctx, cancel := context.WithTimeout(context.Background(), 40*time.Millisecond)
			defer cancel()
			_, err := product.call(ctx, server.URL)
			if !errors.Is(err, context.DeadlineExceeded) {
				t.Fatalf("error = %v, want context deadline exceeded", err)
			}
			if got := calls.Load(); got != 1 {
				t.Fatalf("requests = %d, want one", got)
			}
		})

		t.Run(product.name+"/connection_abort", func(t *testing.T) {
			t.Parallel()
			var calls atomic.Int32
			server := httptest.NewServer(http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
				calls.Add(1)
				product.verify(t, request)
				connection, _, err := writer.(http.Hijacker).Hijack()
				if err != nil {
					t.Errorf("hijack connection: %v", err)
					return
				}
				_ = connection.Close()
			}))
			defer server.Close()
			_, err := product.call(context.Background(), server.URL)
			if err == nil {
				t.Fatal("connection abort returned nil error")
			}
			if got := calls.Load(); got != 1 {
				t.Fatalf("requests = %d, want one", got)
			}
		})
	}
}

func TestGeneratedClientsCloseResponseBodies(t *testing.T) {
	t.Parallel()
	for _, product := range []struct {
		name   string
		call   func(string, *http.Client) error
		body   string
		status int
	}{
		{
			name: "sms",
			call: func(baseURL string, client *http.Client) error {
				generated, err := sms.NewClientWithResponses(baseURL, sms.WithHTTPClient(client))
				if err != nil {
					return err
				}
				_, err = generated.GetV2BalanceWithResponse(context.Background(), &sms.GetV2BalanceParams{Username: "user", Password: "secret"})
				return err
			},
			body:   `{"balance":1}`,
			status: http.StatusOK,
		},
		{
			name: "switch",
			call: func(baseURL string, client *http.Client) error {
				generated, err := switchsdk.NewClientWithResponses(baseURL, switchsdk.WithHTTPClient(client))
				if err != nil {
					return err
				}
				_, err = generated.GetAnnouncementsWithResponse(context.Background())
				return err
			},
			body:   `[]`,
			status: http.StatusOK,
		},
		{
			name: "whatsapp",
			call: func(baseURL string, client *http.Client) error {
				generated, err := wa.NewClientWithResponses(baseURL, wa.WithHTTPClient(client))
				if err != nil {
					return err
				}
				key := "secret"
				_, err = generated.SendOtpV1MessagesOtpPostWithResponse(context.Background(), &wa.SendOtpV1MessagesOtpPostParams{XApiKey: &key}, wa.TemplateMessageRequest{To: "905550000000", TemplateName: "otp"})
				return err
			},
			body:   `{"id":"01234567-89ab-cdef-0123-456789abcdef","status":"queued"}`,
			status: http.StatusAccepted,
		},
	} {
		product := product
		t.Run(product.name, func(t *testing.T) {
			t.Parallel()
			server := httptest.NewServer(http.HandlerFunc(func(writer http.ResponseWriter, _ *http.Request) {
				writer.Header().Set("Content-Type", "application/json")
				writer.WriteHeader(product.status)
				_, _ = io.WriteString(writer, product.body)
			}))
			defer server.Close()
			tracker := &bodyClosingTransport{base: http.DefaultTransport}
			if err := product.call(server.URL, &http.Client{Transport: tracker}); err != nil {
				t.Fatal(err)
			}
			if !tracker.closed.Load() {
				t.Fatal("generated response parser did not close the HTTP response body")
			}
		})
	}
}

// bodyClosingTransport observes the generated parser closing the body returned
// by the real localhost round trip.
type bodyClosingTransport struct {
	base   http.RoundTripper
	closed atomic.Bool
}

func (transport *bodyClosingTransport) RoundTrip(request *http.Request) (*http.Response, error) {
	response, err := transport.base.RoundTrip(request)
	if err != nil {
		return nil, err
	}
	response.Body = closingReadCloser{ReadCloser: response.Body, closed: &transport.closed}
	return response, nil
}

type closingReadCloser struct {
	io.ReadCloser
	closed *atomic.Bool
}

func (body closingReadCloser) Close() error {
	body.closed.Store(true)
	return body.ReadCloser.Close()
}
