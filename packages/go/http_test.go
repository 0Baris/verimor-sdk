package verimor_test

import (
    "context"
    "errors"
    "net/http"
    "net/http/httptest"
    "sync/atomic"
    "testing"
    "time"
    wa "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)

func TestRealHTTPResponses(t *testing.T) {
    for _, status := range []int{202, 401, 429, 500} {
        t.Run(http.StatusText(status), func(t *testing.T) {
            var calls atomic.Int32
            server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
                calls.Add(1)
                if r.Header.Get("x-api-key") != "secret" { t.Error("missing key") }
                w.Header().Set("Content-Type", "application/json")
                w.WriteHeader(status)
                _, _ = w.Write([]byte(`{"id":"01234567-89ab-cdef-0123-456789abcdef","status":"queued"}`))
            }))
            defer server.Close()
            client, err := wa.NewClientWithResponses(server.URL)
            if err != nil { t.Fatal(err) }
            key := "secret"
            response, err := client.SendOtpV1MessagesOtpPostWithResponse(context.Background(), &wa.SendOtpV1MessagesOtpPostParams{XApiKey: &key}, wa.TemplateMessageRequest{To:"905550000000", TemplateName:"otp"})
            if err != nil { t.Fatal(err) }
            if response.StatusCode() != status || calls.Load() != 1 { t.Fatal("status changed or retried") }
        })
    }
}

func TestRealHTTPCancellation(t *testing.T) {
    server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
        <-r.Context().Done()
    }))
    defer server.Close()
    client, err := wa.NewClientWithResponses(server.URL)
    if err != nil { t.Fatal(err) }
    ctx, cancel := context.WithTimeout(context.Background(), 50*time.Millisecond)
    defer cancel()
    _, err = client.HealthHealthGetWithResponse(ctx)
    if !errors.Is(err, context.DeadlineExceeded) { t.Fatalf("wrong timeout: %v", err) }
}

func TestRealHTTPMalformedJSON(t *testing.T) {
    server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
        w.Header().Set("Content-Type", "application/json")
        w.WriteHeader(http.StatusAccepted)
        _, _ = w.Write([]byte("{broken"))
    }))
    defer server.Close()
    client, err := wa.NewClientWithResponses(server.URL)
    if err != nil { t.Fatal(err) }
    _, err = client.SendOtpV1MessagesOtpPostWithResponse(context.Background(), &wa.SendOtpV1MessagesOtpPostParams{}, wa.TemplateMessageRequest{To:"905550000000", TemplateName:"otp"})
    if err == nil { t.Fatal("malformed JSON accepted") }
}
