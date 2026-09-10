package main

import (
	"context"
	"fmt"
	"net/http"
	"net/http/httptest"

	sms "MODULE/sms"
	switchsdk "MODULE/switch"
	whatsapp "MODULE/whatsapp"
)

func main() {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		switch r.URL.Path {
		case "/v2/balance":
			if r.URL.Query().Get("username") != "user" || r.URL.Query().Get("password") != "secret" {
				panic("sms auth")
			}
			_, _ = w.Write([]byte("42"))
		case "/announcements":
			if r.URL.Query().Get("key") != "switch-key" {
				panic("switch auth")
			}
			w.Header().Set("Content-Type", "application/json")
			_, _ = w.Write([]byte("[]"))
		case "/v1/messages/otp":
			if r.Header.Get("x-api-key") != "whatsapp-key" {
				panic("whatsapp auth")
			}
			w.Header().Set("Content-Type", "application/json")
			w.WriteHeader(http.StatusAccepted)
			_, _ = w.Write([]byte(`{"id":"01234567-89ab-cdef-0123-456789abcdef","status":"queued"}`))
		default:
			http.NotFound(w, r)
		}
	}))
	defer server.Close()
	ctx := context.Background()

	smsClient, err := sms.NewClientWithResponses(server.URL)
	if err != nil {
		panic(err)
	}
	smsResponse, err := smsClient.GetV2BalanceWithResponse(
		ctx, &sms.GetV2BalanceParams{Username: "user", Password: "secret"},
	)
	if err != nil || smsResponse.StatusCode() != http.StatusOK || string(smsResponse.Body) != "42" {
		panic(fmt.Sprintf("sms: %v %v", smsResponse, err))
	}

	switchClient, err := switchsdk.NewClientWithResponses(server.URL,
		switchsdk.WithRequestEditorFn(func(_ context.Context, request *http.Request) error {
			query := request.URL.Query()
			query.Set("key", "switch-key")
			request.URL.RawQuery = query.Encode()
			return nil
		}),
	)
	if err != nil {
		panic(err)
	}
	switchResponse, err := switchClient.GetAnnouncementsWithResponse(ctx)
	if err != nil || switchResponse.StatusCode() != http.StatusOK {
		panic(fmt.Sprintf("switch: %v %v", switchResponse, err))
	}

	whatsAppClient, err := whatsapp.NewClientWithResponses(server.URL)
	if err != nil {
		panic(err)
	}
	key := "whatsapp-key"
	otpResponse, err := whatsAppClient.SendOtpV1MessagesOtpPostWithResponse(
		ctx,
		&whatsapp.SendOtpV1MessagesOtpPostParams{XApiKey: &key},
		whatsapp.TemplateMessageRequest{To: "905001112233", TemplateName: "otp"},
	)
	if err != nil || otpResponse.StatusCode() != http.StatusAccepted {
		panic(fmt.Sprintf("whatsapp: %v %v", otpResponse, err))
	}
}
