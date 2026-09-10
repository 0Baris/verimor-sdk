package verimor_test

import (
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net"
	"net/http"
	"net/url"
	"os"
	"path/filepath"
	"reflect"
	"regexp"
	"strconv"
	"strings"
	"sync/atomic"
	"testing"

	sms "github.com/0Baris/verimor-sdk/packages/go/sms"
	switchsdk "github.com/0Baris/verimor-sdk/packages/go/switch"
	whatsapp "github.com/0Baris/verimor-sdk/packages/go/whatsapp"
)

const smsUser, smsPassword, switchKey, whatsAppKey = "sms-user", "sms-pass", "switch-key", "whatsapp-key"

type operation struct{ Product, OperationID, Method, Path string }
type fixture struct {
	operation
	Params, Body, ContentType string
	PathArgs                  []string
}

// product, operationId, method, path, explicit params, body, content type, path args.
// Values are the public TS/Python matrix's minimal fixtures, intentionally not
// derived from a schema or generator.
const fixtureTable = `
sms	get_v2_balance	GET	/v2/balance	{"username":"sms-user","password":"sms-pass"}
sms	get_v2_blacklists	GET	/v2/blacklists	{"username":"sms-user","password":"sms-pass"}
sms	post_v2_blacklists	POST	/v2/blacklists	{"username":"sms-user","password":"sms-pass","phones":"905001112233"}
sms	delete_v2_blacklists_id	DELETE	/v2/blacklists/{id}	{"username":"sms-user","password":"sms-pass"}			905001112233
sms	get_v2_inbound_messages	GET	/v2/inbound_messages	{"username":"sms-user","password":"sms-pass"}
sms	get_v2_headers	GET	/v2/headers	{"username":"sms-user","password":"sms-pass"}
sms	post_v2_iys_consents_json	POST	/v2/iys_consents.json		{"username":"sms-user","password":"sms-pass","source_addr":"ACME","consents":[{"type":"MESAJ","source":"HS_WEB","status":"ONAY","recipient_type":"BIREYSEL","consent_date":"2025-01-01T00:00:00Z","recipient":"905001112233"}]}	application/json
sms	get_v2_iys_campaigns	GET	/v2/iys/campaigns	{"username":"sms-user","password":"sms-pass"}
sms	get_v2_iys_campaigns_id_consents	GET	/v2/iys/campaigns/{id}/consents	{"username":"sms-user","password":"sms-pass"}			1
sms	get_v2_send	GET	/v2/send	{"username":"sms-user","password":"sms-pass","dest":"905001112233","msg":"Merhaba"}
sms	sendSmsJson	POST	/v2/send.json		{"username":"sms-user","password":"sms-pass","messages":[{"dest":"905001112233","msg":"Merhaba"}]}	application/json
sms	post_v2_cancel_id	POST	/v2/cancel/{id}		{"username":"sms-user","password":"sms-pass"}	application/json	1
sms	getSmsStatus	GET	/v2/status	{"username":"sms-user","password":"sms-pass","id":1}
switch	listAgentStatuses	GET	/agent_statuses
switch	getAnnouncements	GET	/announcements
switch	createAnnouncement	POST	/announcements		{"name":"announcement","sounddata":"data:audio/mp3;base64,AA=="}	application/x-www-form-urlencoded
switch	updateAnnouncement	PATCH	/announcements/{id}		{"name":"announcement"}	application/x-www-form-urlencoded	1
switch	deleteAnnouncement	DELETE	/announcements/{id}				1
switch	listBlockedNumbers	GET	/blocked_numbers
switch	createBlockedNumber	POST	/blocked_numbers	{"number":"905001112233"}
switch	deleteBlockedNumber	DELETE	/blocked_numbers/delete	{"number":"905001112233"}
switch	createBridge	GET	/bridge	{"source":"1001","destination":"1002"}
switch	transferCallPost	POST	/transfer	{"id":"call-1","user_number":"1002"}
switch	transferCall	GET	/transfer/{id}	{"user_number":"1002"}			call-1
switch	getCallerIds	GET	/caller_ids
switch	originateCall	GET	/originate	{"extension":"1001","destination":"905001112233"}
switch	originateCallPost	POST	/originate		{"extension":"1001","destination":"905001112233"}	application/json
switch	hangupCall	GET	/hangup/{id}				call-1
switch	answerCall	GET	/answer/{id}				call-1
switch	answerCallPost	POST	/answer		{"id":"call-1"}	application/json
switch	getCdrs	GET	/cdrs
switch	getCdr	GET	/cdrs/{id}				1
switch	listContactGroups	GET	/contact_groups
switch	createContactGroup	POST	/contact_groups	{"name":"customers"}
switch	updateContactGroup	PATCH	/contact_groups/{id}	{"name":"customers"}			1
switch	deleteContactGroup	DELETE	/contact_groups/{id}				1
switch	listContacts	GET	/contacts
switch	createContact	POST	/contacts	{"name":"Ada","surname":"Lovelace","phone":"905001112233"}
switch	updateContact	PATCH	/contacts/{id}				1
switch	deleteContact	DELETE	/contacts/{id}				1
switch	getCrmIntegrations	GET	/crm_integrations
switch	updateCrmIntegrations	POST	/crm_integrations
switch	webhookPayloadExamples	GET	/webhook-payload-examples
switch	createDnd	GET	/dnd/{id}	{"state":"on"}			1001
switch	listExtensions	GET	/extensions
switch	getExtension	GET	/extensions/{id}				1001
switch	createFaxDocumentUrl	POST	/fax_document_url	{"call_uuid":"call-1"}
switch	downloadFaxDocument	GET	/fax_document/{id}				1
switch	listFaxOrders	GET	/fax_orders
switch	createFaxOrder	POST	/fax_orders	{"remote_station_id":"905001112233","filedata":"JVBERi0x"}
switch	listFdrs	GET	/fdrs
switch	createIvrCampaign	POST	/ivr_campaigns.json		{"call_type":"tts","name":"campaign","phone_list":[{"phone":"905001112233"}]}	application/json
switch	updateIvrCampaign	PATCH	/ivr_campaigns/{id}.json	{"status":"active"}			1
switch	deleteIvrCampaign	DELETE	/ivr_campaigns/{id}.json				1
switch	muteCall	GET	/mute/{id}	{"state":"on"}			call-1
switch	getQueues	GET	/queues
switch	getQueuesPending	GET	/queues/pending
switch	manageQueueUsers	GET	/queue/manage_users	{"queue_number":"100","user_list":"1001,1002"}
switch	getQueueUserList	GET	/queue/user_list	{"queue_number":"100"}
switch	createRecordingUrl	POST	/recording_url	{"call_uuid":"call-1"}
switch	listUserStatuses	GET	/user_statuses
switch	updateOutboundCallerId	GET	/update_outbound_caller_id	{"extension":"1001","caller_id":"902121112233"}
switch	getVoicemailMessages	GET	/voicemail_messages
switch	createVoicemailRecordingUrl	POST	/voicemail_recording_url	{"uuid":"voice-1"}
switch	createWebphoneToken	POST	/webphone_tokens	{"extension":"1001"}
whatsapp	send_otp_v1_messages_otp_post	POST	/v1/messages/otp	{"x-api-key":"whatsapp-key"}	{"to":"905001112233","template_name":"otp","language":"tr","use_tenant_queue":false}	application/json
whatsapp	send_utility_v1_messages_utility_post	POST	/v1/messages/utility	{"x-api-key":"whatsapp-key"}	{"to":"905001112233","template_name":"utility","language":"tr","use_tenant_queue":false}	application/json
whatsapp	health_health_get	GET	/health
`

func TestGeneratedOperationMatrix(t *testing.T) {
	fixtures := parseFixtures(t)
	manifest := readManifest(t)
	generated := generatedOperations(t)
	assertOperations(t, generated.identities(), generatedManifest(manifest), "generated identities differ from manifest")
	want := make([]operation, len(fixtures))
	for i := range fixtures {
		want[i] = fixtures[i].operation
	}
	assertOperations(t, want, manifest, "fixtures differ from manifest")
	var calls atomic.Int64
	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		i := int(calls.Add(1)) - 1
		if i >= len(fixtures) {
			t.Errorf("unexpected request %s", r.URL)
			return
		}
		assertRequest(t, r, fixtures[i])
		w.WriteHeader(http.StatusTeapot)
	})
	listener, err := net.Listen("tcp4", "127.0.0.1:0")
	if err != nil {
		t.Fatal(err)
	}
	server := &http.Server{Handler: handler}
	go func() { _ = server.Serve(listener) }()
	defer server.Close()
	clients := clients(t, "http://"+listener.Addr().String())
	for _, current := range fixtures {
		current := current
		t.Run(current.Product+"/"+current.OperationID, func(t *testing.T) {
			generated, ok := generated[key(generatedIdentity(current.operation))]
			if !ok {
				t.Fatalf("no generated method for %v", current.operation)
			}
			if err := invoke(generated, clients[current.Product], current); err != nil {
				t.Fatal(err)
			}
		})
	}
	if calls.Load() != int64(len(fixtures)) {
		t.Fatalf("calls = %d, want %d", calls.Load(), len(fixtures))
	}
}

func TestGeneratedOperationSetRejectsMissingDuplicateAndWrongRoute(t *testing.T) {
	want := []operation{{"sms", "GetV2Balance", "GET", "/v2/balance"}}
	for _, got := range [][]operation{nil, {want[0], want[0]}, {{"sms", "GetV2Balance", "GET", "/wrong"}}} {
		if operationsMatch(got, want) {
			t.Fatal("invalid generated operation set accepted")
		}
	}
}

func parseFixtures(t *testing.T) []fixture {
	t.Helper()
	var out []fixture
	for _, line := range strings.Split(strings.TrimSpace(fixtureTable), "\n") {
		fields := strings.Split(line, "\t")
		for len(fields) < 8 {
			fields = append(fields, "")
		}
		out = append(out, fixture{operation: operation{fields[0], fields[1], fields[2], fields[3]}, Params: fields[4], Body: fields[5], ContentType: fields[6], PathArgs: strings.Fields(fields[7])})
	}
	if len(out) != 68 {
		t.Fatalf("fixtures = %d, want 68", len(out))
	}
	return out
}
func readManifest(t *testing.T) []operation {
	t.Helper()
	data, err := os.ReadFile("../../operation-manifest.json")
	if err != nil {
		t.Fatal(err)
	}
	var out []operation
	if err = json.Unmarshal(data, &out); err != nil {
		t.Fatal(err)
	}
	return out
}
func key(v operation) string {
	return strings.Join([]string{v.Product, v.OperationID, v.Method, v.Path}, "\x00")
}
func generatedIdentity(v operation) operation { v.OperationID = goOperationID(v.OperationID); return v }
func generatedManifest(in []operation) []operation {
	out := make([]operation, len(in))
	for i, v := range in {
		out[i] = generatedIdentity(v)
	}
	return out
}
func goOperationID(id string) string {
	if !strings.Contains(id, "_") {
		return strings.ToUpper(id[:1]) + id[1:]
	}
	var out strings.Builder
	for _, part := range strings.Split(id, "_") {
		out.WriteString(strings.ToUpper(part[:1]))
		out.WriteString(part[1:])
	}
	return out.String()
}
func operationsMatch(got, want []operation) bool {
	if len(got) != len(want) {
		return false
	}
	seen := map[string]bool{}
	for _, v := range got {
		id := key(v)
		if seen[id] {
			return false
		}
		seen[id] = true
	}
	for _, v := range want {
		if !seen[key(v)] {
			return false
		}
	}
	return true
}
func assertOperations(t *testing.T, got, want []operation, msg string) {
	t.Helper()
	seen := map[string]bool{}
	for _, v := range got {
		id := key(v)
		if seen[id] {
			t.Fatalf("duplicate generated identity: %s", id)
		}
		seen[id] = true
	}
	if len(got) != len(want) {
		t.Fatalf("%s: got %d, want %d", msg, len(got), len(want))
	}
	for _, v := range want {
		if !seen[key(v)] {
			t.Fatalf("%s: missing %s", msg, key(v))
		}
	}
}

type generatedOperation struct {
	operation
	MethodName string
}
type generatedMap map[string]generatedOperation

func (g generatedMap) identities() []operation {
	out := make([]operation, 0, len(g))
	for _, v := range g {
		out = append(out, v.operation)
	}
	return out
}

var generatedResponse = regexp.MustCompile("(?s)// Corresponds with ([A-Z]+) ([^ ]+) \\(the `([A-Za-z0-9_]+)` operationId\\)\\.\\nfunc \\(c \\*ClientWithResponses\\) ([A-Za-z0-9]+WithResponse)\\(")

func generatedOperations(t *testing.T) generatedMap {
	t.Helper()
	out := generatedMap{}
	for _, product := range []string{"sms", "switch", "whatsapp"} {
		source, err := os.ReadFile(filepath.Join(product, "client.gen.go"))
		if err != nil {
			t.Fatal(err)
		}
		for _, m := range generatedResponse.FindAllStringSubmatch(string(source), -1) {
			v := generatedOperation{operation: operation{product, m[3], m[1], m[2]}, MethodName: m[4]}
			id := key(v.operation)
			if old, ok := out[id]; !ok || generatedMethodScore(v.MethodName) < generatedMethodScore(old.MethodName) {
				out[id] = v
			}
		}
	}
	return out
}

func generatedMethodScore(name string) int {
	if strings.Contains(name, "WithBodyWithResponse") {
		return 1
	}
	return 0
}

func clients(t *testing.T, base string) map[string]any {
	t.Helper()
	s, err := sms.NewClientWithResponses(base)
	if err != nil {
		t.Fatal(err)
	}
	sw, err := switchsdk.NewClientWithResponses(base, switchsdk.WithRequestEditorFn(func(_ context.Context, r *http.Request) error {
		q := r.URL.Query()
		q.Set("key", switchKey)
		r.URL.RawQuery = q.Encode()
		return nil
	}))
	if err != nil {
		t.Fatal(err)
	}
	w, err := whatsapp.NewClientWithResponses(base)
	if err != nil {
		t.Fatal(err)
	}
	return map[string]any{"sms": s, "switch": sw, "whatsapp": w}
}
func invoke(g generatedOperation, client any, f fixture) error {
	method := reflect.ValueOf(client).MethodByName(g.MethodName)
	if !method.IsValid() {
		return fmt.Errorf("missing generated method %s", g.MethodName)
	}
	typ := method.Type()
	args := []reflect.Value{reflect.ValueOf(context.Background())}
	pathArg := 0
	for i := 1; i < typ.NumIn(); i++ {
		if typ.IsVariadic() && i == typ.NumIn()-1 {
			break
		}
		value, err := fixtureArgument(typ.In(i), f, &pathArg)
		if err != nil {
			return err
		}
		args = append(args, value)
	}
	result := method.Call(args)
	if !result[1].IsNil() {
		return result[1].Interface().(error)
	}
	return nil
}
func fixtureArgument(typ reflect.Type, f fixture, pathArg *int) (reflect.Value, error) {
	if typ.Kind() == reflect.Ptr {
		v := reflect.New(typ.Elem())
		data := f.Params
		if data == "" {
			data = f.Body
		}
		if data != "" {
			if err := json.Unmarshal([]byte(data), v.Interface()); err != nil {
				return reflect.Value{}, err
			}
		}
		return v, nil
	}
	if typ.Kind() == reflect.String {
		if *pathArg >= len(f.PathArgs) {
			return reflect.Value{}, fmt.Errorf("missing path argument for %s", f.OperationID)
		}
		v := reflect.ValueOf(f.PathArgs[*pathArg]).Convert(typ)
		*pathArg++
		return v, nil
	}
	if typ.Kind() >= reflect.Int && typ.Kind() <= reflect.Int64 {
		if *pathArg >= len(f.PathArgs) {
			return reflect.Value{}, fmt.Errorf("missing path argument for %s", f.OperationID)
		}
		n, err := strconv.ParseInt(f.PathArgs[*pathArg], 10, 64)
		if err != nil {
			return reflect.Value{}, err
		}
		*pathArg++
		v := reflect.New(typ).Elem()
		v.SetInt(n)
		return v, nil
	}
	if f.Body == "" {
		return reflect.Zero(typ), nil
	}
	v := reflect.New(typ)
	if err := json.Unmarshal([]byte(f.Body), v.Interface()); err != nil {
		return reflect.Value{}, err
	}
	return v.Elem(), nil
}

func assertRequest(t *testing.T, r *http.Request, f fixture) {
	t.Helper()
	path := f.Path
	for _, arg := range f.PathArgs {
		path = regexp.MustCompile(`\{[^}]+\}`).ReplaceAllString(path, arg)
	}
	if r.Method != f.Method || r.URL.Path != path {
		t.Errorf("%s: got %s %s, want %s %s", f.OperationID, r.Method, r.URL.Path, f.Method, path)
	}
	var params map[string]any
	if f.Params != "" {
		_ = json.Unmarshal([]byte(f.Params), &params)
		for name, want := range params {
			if f.Product == "whatsapp" && name == "x-api-key" {
				continue
			}
			if got := r.URL.Query().Get(name); got != fmt.Sprint(want) {
				t.Errorf("%s: query %s = %q, want %v", f.OperationID, name, got, want)
			}
		}
	}
	switch f.Product {
	case "sms":
		if f.Body == "" && (r.URL.Query().Get("username") != smsUser || r.URL.Query().Get("password") != smsPassword) {
			t.Errorf("%s: missing SMS credentials", f.OperationID)
		}
	case "switch":
		if r.URL.Query().Get("key") != switchKey {
			t.Errorf("%s: missing switch key", f.OperationID)
		}
	case "whatsapp":
		if f.Path != "/health" && r.Header.Get("x-api-key") != whatsAppKey {
			t.Errorf("%s: missing WhatsApp key", f.OperationID)
		}
	}
	if f.Body == "" {
		if r.Header.Get("Content-Type") != "" {
			t.Errorf("%s: unexpected content type %q", f.OperationID, r.Header.Get("Content-Type"))
		}
		return
	}
	if !strings.Contains(r.Header.Get("Content-Type"), f.ContentType) {
		t.Errorf("%s: content type %q, want %q", f.OperationID, r.Header.Get("Content-Type"), f.ContentType)
	}
	body, err := io.ReadAll(r.Body)
	if err != nil {
		t.Error(err)
		return
	}
	if f.ContentType == "application/json" {
		var got, want any
		_ = json.Unmarshal(body, &got)
		_ = json.Unmarshal([]byte(f.Body), &want)
		if !reflect.DeepEqual(got, want) {
			t.Errorf("%s: JSON body = %s, want %s", f.OperationID, body, f.Body)
		}
	} else {
		values, _ := url.ParseQuery(string(body))
		var want map[string]any
		_ = json.Unmarshal([]byte(f.Body), &want)
		for name, value := range want {
			if got := values.Get(name); got != fmt.Sprint(value) {
				t.Errorf("%s: form %s = %q, want %v", f.OperationID, name, got, value)
			}
		}
	}
	if f.Product == "sms" {
		var body map[string]any
		_ = json.Unmarshal([]byte(f.Body), &body)
		if body["username"] != smsUser || body["password"] != smsPassword {
			t.Errorf("%s: SMS body fixture lacks credentials", f.OperationID)
		}
	}
}
