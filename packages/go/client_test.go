package verimor_test

import (
	"context"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"testing"

	sms "github.com/0Baris/verimor-sdk/packages/go/sms"
	switchsdk "github.com/0Baris/verimor-sdk/packages/go/switch"
	whatsapp "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)

func TestBalanceQueryAndHTTPError(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path != "/v2/balance" || r.URL.Query().Get("username") != "user" || r.URL.Query().Get("password") != "secret" {
			t.Errorf("wrong request: %s", r.URL)
		}
		w.WriteHeader(http.StatusUnauthorized)
		_, _ = w.Write([]byte("denied"))
	}))
	defer server.Close()
	client, err := sms.NewClientWithResponses(server.URL)
	if err != nil {
		t.Fatal(err)
	}
	response, err := client.GetV2BalanceWithResponse(context.Background(), &sms.GetV2BalanceParams{Username: "user", Password: "secret"})
	if err != nil {
		t.Fatal(err)
	}
	if response.StatusCode() != 401 || string(response.Body) != "denied" {
		t.Fatal(response)
	}
}

func TestWhatsAppHeaderAndBody(t *testing.T) {
	key := "test-key"
	request, err := whatsapp.NewSendOtpV1MessagesOtpPostRequest("https://example.invalid", &whatsapp.SendOtpV1MessagesOtpPostParams{XApiKey: &key}, whatsapp.TemplateMessageRequest{To: "905550000000", TemplateName: "otp"})
	if err != nil {
		t.Fatal(err)
	}
	if request.Header.Get("x-api-key") != key || request.Method != "POST" || request.URL.Path != "/v1/messages/otp" {
		t.Fatal(request)
	}
	defer request.Body.Close()
	var body map[string]any
	if err := json.NewDecoder(request.Body).Decode(&body); err != nil {
		t.Fatal(err)
	}
	if body["template_name"] != "otp" || body["to"] != "905550000000" {
		t.Fatal(body)
	}
}

func TestSwitchAuthentication(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Query().Get("key") != "secret" {
			t.Errorf("missing query key")
		}
		w.Header().Set("Content-Type", "application/json")
		_, _ = w.Write([]byte("[]"))
	}))
	defer server.Close()
	client, err := switchsdk.NewClientWithResponses(server.URL, switchsdk.WithRequestEditorFn(func(_ context.Context, r *http.Request) error {
		query := r.URL.Query()
		query.Set("key", "secret")
		r.URL.RawQuery = query.Encode()
		return nil
	}))
	if err != nil {
		t.Fatal(err)
	}
	response, err := client.GetAnnouncementsWithResponse(context.Background())
	if err != nil {
		t.Fatal(err)
	}
	if response.StatusCode() != 200 {
		t.Fatal(response)
	}
}
