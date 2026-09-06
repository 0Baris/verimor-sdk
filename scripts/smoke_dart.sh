#!/bin/sh
set -eu
package=$(pwd)
name=$(sed -n 's/^name: //p' pubspec.yaml)
consumer=$(mktemp -d)
trap 'rm -rf "$consumer"' EXIT
cd "$consumer"
printf 'name: sdk_consumer\nenvironment:\n  sdk: ">=3.11.0 <4.0.0"\ndependencies:\n  %s:\n    path: %s\n' "$name" "$package" > pubspec.yaml
printf 'import "package:%s/%s.dart";\nvoid main() { print(%s); }\n' "$name" "$name" "'SDK import OK'" > main.dart
dart pub get
dart compile exe main.dart -o consumer
./consumer
