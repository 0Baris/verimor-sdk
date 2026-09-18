package verimor

import (
	"context"
	"encoding/json"
	"io"
	"net/http"
	"strings"
	"time"

	smsraw "github.com/0Baris/verimor-sdk/packages/go/sms"
	switchraw "github.com/0Baris/verimor-sdk/packages/go/switch"
	whatsappraw "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)

const defaultTimeout = 30 * time.Second

type clientConfig struct {
	baseURL    string
	httpClient *http.Client
	timeout    time.Duration
	sourceAddr *string
}

type SMSOption interface{ applySMS(*clientConfig) }
type SwitchOption interface{ applySwitch(*clientConfig) }
type WhatsAppOption interface{ applyWhatsApp(*clientConfig) }

type commonOption func(*clientConfig)

func (option commonOption) applySMS(config *clientConfig)      { option(config) }
func (option commonOption) applySwitch(config *clientConfig)   { option(config) }
func (option commonOption) applyWhatsApp(config *clientConfig) { option(config) }

func WithBaseURL(baseURL string) commonOption {
	return func(config *clientConfig) { config.baseURL = strings.TrimRight(baseURL, "/") }
}

func WithHTTPClient(client *http.Client) commonOption {
	return func(config *clientConfig) { config.httpClient = client }
}

func WithTimeout(timeout time.Duration) commonOption {
	return func(config *clientConfig) { config.timeout = timeout }
}

type sourceAddrOption string

func (option sourceAddrOption) applySMS(config *clientConfig) {
	value := string(option)
	config.sourceAddr = &value
}

func WithSourceAddr(sourceAddr string) SMSOption { return sourceAddrOption(sourceAddr) }

func configuredClient(defaultBaseURL string, config clientConfig) (*facadeClient, clientConfig) {
	if config.baseURL == "" {
		config.baseURL = defaultBaseURL
	}
	if config.timeout == 0 {
		config.timeout = defaultTimeout
	}
	if config.httpClient == nil {
		config.httpClient = &http.Client{Timeout: config.timeout}
	}
	return &facadeClient{
		baseURL:    config.baseURL,
		httpClient: config.httpClient,
		defaults:   map[string]any{},
	}, config
}

type SMSClient struct {
	*facadeClient
	Raw *smsraw.ClientWithResponses
}

func NewSMSClient(username, password string, options ...SMSOption) (*SMSClient, error) {
	config := clientConfig{}
	for _, option := range options {
		option.applySMS(&config)
	}
	base, config := configuredClient("https://sms.verimor.com.tr", config)
	base.product = "sms"
	base.credentials = map[string]string{"username": username, "password": password}
	if config.sourceAddr != nil {
		base.defaults["sourceAddr"] = *config.sourceAddr
	}
	raw, err := smsraw.NewClientWithResponses(
		base.baseURL,
		smsraw.WithHTTPClient(base.httpClient),
		smsraw.WithRequestEditorFn(smsAuthEditor(username, password)),
	)
	if err != nil {
		return nil, err
	}
	return &SMSClient{facadeClient: base, Raw: raw}, nil
}

type SwitchClient struct {
	*facadeClient
	Raw *switchraw.ClientWithResponses
}

func NewSwitchClient(apiKey string, options ...SwitchOption) (*SwitchClient, error) {
	config := clientConfig{}
	for _, option := range options {
		option.applySwitch(&config)
	}
	base, _ := configuredClient("https://api.bulutsantralim.com", config)
	base.product = "switch"
	base.credentials = map[string]string{"key": apiKey}
	raw, err := switchraw.NewClientWithResponses(
		base.baseURL,
		switchraw.WithHTTPClient(base.httpClient),
		switchraw.WithRequestEditorFn(queryAuthEditor("key", apiKey)),
	)
	if err != nil {
		return nil, err
	}
	return &SwitchClient{facadeClient: base, Raw: raw}, nil
}

type WhatsAppClient struct {
	*facadeClient
	Raw *whatsappraw.ClientWithResponses
}

func NewWhatsAppClient(apiKey string, options ...WhatsAppOption) (*WhatsAppClient, error) {
	config := clientConfig{}
	for _, option := range options {
		option.applyWhatsApp(&config)
	}
	base, _ := configuredClient("https://wapi.verimor.com.tr", config)
	base.product = "whatsapp"
	base.credentials = map[string]string{"x-api-key": apiKey}
	raw, err := whatsappraw.NewClientWithResponses(
		base.baseURL,
		whatsappraw.WithHTTPClient(base.httpClient),
		whatsappraw.WithRequestEditorFn(headerAuthEditor("x-api-key", apiKey)),
	)
	if err != nil {
		return nil, err
	}
	return &WhatsAppClient{facadeClient: base, Raw: raw}, nil
}

func queryAuthEditor(name, value string) func(context.Context, *http.Request) error {
	return func(_ context.Context, request *http.Request) error {
		query := request.URL.Query()
		query.Set(name, value)
		request.URL.RawQuery = query.Encode()
		return nil
	}
}

func headerAuthEditor(name, value string) func(context.Context, *http.Request) error {
	return func(_ context.Context, request *http.Request) error {
		request.Header.Set(name, value)
		return nil
	}
}

func smsAuthEditor(username, password string) func(context.Context, *http.Request) error {
	return func(_ context.Context, request *http.Request) error {
		if request.Body == nil || !strings.Contains(request.Header.Get("content-type"), "json") {
			query := request.URL.Query()
			query.Set("username", username)
			query.Set("password", password)
			request.URL.RawQuery = query.Encode()
			return nil
		}
		data, err := io.ReadAll(request.Body)
		if err != nil {
			return err
		}
		var body map[string]any
		if err := json.Unmarshal(data, &body); err != nil {
			return err
		}
		body["username"] = username
		body["password"] = password
		encoded, err := json.Marshal(body)
		if err != nil {
			return err
		}
		request.Body = io.NopCloser(strings.NewReader(string(encoded)))
		request.ContentLength = int64(len(encoded))
		return nil
	}
}
