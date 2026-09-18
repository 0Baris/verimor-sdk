package verimor

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"reflect"
	"strings"
)

type VerimorAPIError struct {
	Product string
	Status  int
	Body    any
}

func (e *VerimorAPIError) Error() string {
	return fmt.Sprintf("Verimor %s API returned HTTP %d", e.Product, e.Status)
}

type facadeParameter struct {
	WireName   string
	PublicName string
	Location   string
	Required   bool
}

type facadeOperation struct {
	OperationID        string
	Method             string
	Path               string
	Parameters         []facadeParameter
	HasBody            bool
	BodyRequired       bool
	BodyRequiredFields []string
	ContentType        string
	ResponseKind       string
	ClientDefaults     map[string]string
	Credentials        map[string]string
}

type facadeClient struct {
	product     string
	baseURL     string
	httpClient  *http.Client
	credentials map[string]string
	defaults    map[string]any
}

func cloneInput(input map[string]any) map[string]any {
	cloned := make(map[string]any, len(input))
	for key, value := range input {
		cloned[key] = value
	}
	return cloned
}

func inputValue(values map[string]any, parameter facadeParameter) (any, bool) {
	for _, name := range []string{parameter.PublicName, parameter.WireName} {
		if value, ok := values[name]; ok {
			return value, true
		}
	}
	return nil, false
}

func addQuery(values url.Values, name string, value any) {
	if value == nil {
		return
	}
	rv := reflect.ValueOf(value)
	if rv.Kind() == reflect.Slice || rv.Kind() == reflect.Array {
		for index := 0; index < rv.Len(); index++ {
			addQuery(values, name, rv.Index(index).Interface())
		}
		return
	}
	values.Add(name, fmt.Sprint(value))
}

func responseBody(response *http.Response, data []byte) any {
	if strings.Contains(response.Header.Get("content-type"), "json") {
		var parsed any
		if json.Unmarshal(data, &parsed) == nil {
			return parsed
		}
	}
	return string(data)
}

func (c *facadeClient) request(
	ctx context.Context,
	operation facadeOperation,
	input map[string]any,
) (any, error) {
	values := cloneInput(input)
	var body map[string]any
	if operation.HasBody {
		if len(operation.Parameters) == 0 {
			body = cloneInput(values)
			values = map[string]any{}
		} else if rawBody, ok := values["body"]; ok {
			mapped, valid := rawBody.(map[string]any)
			if !valid {
				return nil, fmt.Errorf("%s body must be map[string]any", operation.OperationID)
			}
			body = cloneInput(mapped)
			delete(values, "body")
		} else {
			body = map[string]any{}
		}
	}

	for wireName, optionName := range operation.ClientDefaults {
		target := values
		if body != nil {
			target = body
		}
		if _, exists := target[wireName]; !exists {
			if value, configured := c.defaults[optionName]; configured {
				target[wireName] = value
			}
		}
		if _, exists := target[wireName]; !exists {
			return nil, fmt.Errorf("%s requires %s", operation.OperationID, wireName)
		}
	}
	for name, location := range operation.Credentials {
		if location == "body" && body != nil {
			body[name] = c.credentials[name]
		}
	}
	for _, field := range operation.BodyRequiredFields {
		if body == nil || body[field] == nil {
			return nil, fmt.Errorf("%s requires %s", operation.OperationID, field)
		}
	}

	path := operation.Path
	query := url.Values{}
	headers := http.Header{}
	for _, parameter := range operation.Parameters {
		value, exists := inputValue(values, parameter)
		if parameter.Required && !exists {
			return nil, fmt.Errorf("%s requires %s", operation.OperationID, parameter.PublicName)
		}
		switch parameter.Location {
		case "path":
			if exists {
				path = strings.ReplaceAll(path, "{"+parameter.WireName+"}", url.PathEscape(fmt.Sprint(value)))
			}
		case "query":
			if exists {
				addQuery(query, parameter.WireName, value)
			}
		case "header":
			if exists {
				headers.Set(parameter.WireName, fmt.Sprint(value))
			}
		}
	}
	for name, location := range operation.Credentials {
		switch location {
		case "query":
			query.Set(name, c.credentials[name])
		case "header":
			headers.Set(name, c.credentials[name])
		}
	}

	var requestBody io.Reader
	if body != nil {
		if operation.ContentType == "application/x-www-form-urlencoded" {
			form := url.Values{}
			for name, value := range body {
				addQuery(form, name, value)
			}
			requestBody = strings.NewReader(form.Encode())
			headers.Set("content-type", operation.ContentType)
		} else {
			encoded, err := json.Marshal(body)
			if err != nil {
				return nil, err
			}
			requestBody = bytes.NewReader(encoded)
			headers.Set("content-type", "application/json")
		}
	}

	endpoint := strings.TrimRight(c.baseURL, "/") + path
	if encoded := query.Encode(); encoded != "" {
		endpoint += "?" + encoded
	}
	request, err := http.NewRequestWithContext(ctx, operation.Method, endpoint, requestBody)
	if err != nil {
		return nil, err
	}
	request.Header = headers
	response, err := c.httpClient.Do(request)
	if err != nil {
		return nil, err
	}
	defer response.Body.Close()
	data, err := io.ReadAll(response.Body)
	if err != nil {
		return nil, err
	}
	if response.StatusCode < 200 || response.StatusCode >= 300 {
		return nil, &VerimorAPIError{
			Product: c.product,
			Status:  response.StatusCode,
			Body:    responseBody(response, data),
		}
	}
	switch operation.ResponseKind {
	case "empty":
		return nil, nil
	case "text":
		return strings.TrimSpace(string(data)), nil
	case "binary":
		return data, nil
	default:
		var parsed any
		if err := json.Unmarshal(data, &parsed); err != nil {
			return nil, err
		}
		return parsed, nil
	}
}
