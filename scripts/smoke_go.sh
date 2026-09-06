#!/bin/sh
set -eu
package=$(pwd)
module=$(sed -n 's/^module //p' go.mod)
consumer=$(mktemp -d)
trap 'rm -rf "$consumer"' EXIT
cd "$consumer"
go mod init example.invalid/consumer
go mod edit "-replace=$module=$package"
printf 'package main\nimport (_ "%s/sms"; _ "%s/switch"; _ "%s/whatsapp")\nfunc main() {}\n' "$module" "$module" "$module" > main.go
go mod tidy
go build ./...
