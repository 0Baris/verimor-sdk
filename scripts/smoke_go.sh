#!/bin/sh
set -eu

package=$(pwd)
module=$(sed -n 's/^module //p' go.mod)
consumer=$(mktemp -d)
trap 'rm -rf "$consumer"' EXIT
cd "$consumer"
go mod init example.invalid/consumer
go mod edit "-replace=$module=$package"
go mod edit "-require=$module@v0.0.0"
sed "s|MODULE|$module|g" "$package/../../scripts/smoke_go_consumer.go" > main.go
gofmt -w main.go
go build -mod=mod ./...
go run .
