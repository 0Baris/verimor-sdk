package verimor_test

import (
	"context"
	"encoding/json"
	"errors"
	"net/http"
	"net/http/httptest"
	"testing"

	verimor "github.com/0Baris/verimor-sdk/packages/go"
)

func TestSMSFacadeUsesDefaultSourceAddrWithoutMutatingInput(t *testing.T) {
	var captured map[string]any
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if err := json.NewDecoder(r.Body).Decode(&captured); err != nil {
			t.Fatal(err)
		}
		_, _ = w.Write([]byte("123"))
	}))
	defer server.Close()

	client, err := verimor.NewSMSClient(
		"user",
		"secret",
		verimor.WithBaseURL(server.URL),
		verimor.WithSourceAddr("VERIMOR"),
	)
	if err != nil {
		t.Fatal(err)
	}
	input := map[string]any{"messages": []any{map[string]any{"dest": "90500", "msg": "Merhaba"}}}
	result, err := client.Send(context.Background(), input)
	if err != nil || result != "123" {
		t.Fatalf("result=%v err=%v", result, err)
	}
	if _, mutated := input["source_addr"]; mutated {
		t.Fatal("caller input mutated")
	}
	if captured["source_addr"] != "VERIMOR" || captured["username"] != "user" {
		t.Fatalf("wrong request: %#v", captured)
	}
}

func TestSwitchAndWhatsAppFacadeAuthentication(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch r.URL.Path {
		case "/announcements":
			if r.URL.Query().Get("key") != "switch key" {
				t.Error("missing Switch key")
			}
			w.Header().Set("content-type", "application/json")
			_, _ = w.Write([]byte("[]"))
		case "/v1/messages/otp":
			if r.Header.Get("x-api-key") != "wa key" {
				t.Error("missing WhatsApp key")
			}
			w.Header().Set("content-type", "application/json")
			w.WriteHeader(http.StatusAccepted)
			_, _ = w.Write([]byte(`{"id":"1","status":"queued"}`))
		}
	}))
	defer server.Close()

	switchClient, err := verimor.NewSwitchClient("switch key", verimor.WithBaseURL(server.URL))
	if err != nil {
		t.Fatal(err)
	}
	if _, err := switchClient.ListAnnouncements(context.Background()); err != nil {
		t.Fatal(err)
	}
	waClient, err := verimor.NewWhatsAppClient("wa key", verimor.WithBaseURL(server.URL))
	if err != nil {
		t.Fatal(err)
	}
	if _, err := waClient.SendOtp(context.Background(), map[string]any{
		"to": "90500", "template_name": "otp",
	}); err != nil {
		t.Fatal(err)
	}
}

func TestFacadeNormalizesHTTPErrorAndDoesNotRetry(t *testing.T) {
	requests := 0
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		requests++
		w.Header().Set("content-type", "application/json")
		w.WriteHeader(http.StatusTooManyRequests)
		_, _ = w.Write([]byte(`{"detail":"slow down"}`))
	}))
	defer server.Close()

	client, err := verimor.NewSwitchClient("key", verimor.WithBaseURL(server.URL))
	if err != nil {
		t.Fatal(err)
	}
	_, err = client.ListAnnouncements(context.Background())
	var apiError *verimor.VerimorAPIError
	if !errors.As(err, &apiError) || apiError.Product != "switch" || apiError.Status != 429 {
		t.Fatalf("unexpected error: %#v", err)
	}
	if requests != 1 {
		t.Fatalf("requests=%d", requests)
	}
}
