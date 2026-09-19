# Contributing and releasing

[Türkçe](CONTRIBUTING.md)

This public repository is the source of truth for consumer-ready SDK wrappers,
tests, usage guides, manifests, and release workflows. The private generator
produces schemas and generated code; its export must preserve public community
changes.

## Development

Use a branch and pull request. For a bugfix, write a failing regression test
first. Do not edit generated files directly: change the generator's
normalization or renderer source, then export the resulting output.

```bash
npm ci
npm run typecheck --workspace packages/typescript
npm test --workspace packages/typescript
npm run build --workspace packages/typescript
npm run pack:dry --workspace packages/typescript

uv sync --project packages/python --extra dev --locked
uv run --project packages/python ruff check --config packages/python/pyproject.toml packages/python/src packages/python/tests
uv run --project packages/python ruff format --check --config packages/python/pyproject.toml packages/python/src packages/python/tests scripts tests
uv run --project packages/python mypy --config-file packages/python/pyproject.toml packages/python/src/verimor
uv run --project packages/python python -m pytest packages/python/tests tests
uv build --project packages/python

(cd packages/go && go vet ./... && go test -race ./...)
```

Dart sources are not yet published to pub.dev. Run `dart pub get`,
`dart analyze`, and `dart test` for each product. A CI
`dart pub publish --dry-run` checks packaging without publishing.

## Documentation

The root `README.md` is Turkish and `README.en.md` is English. Each npm/PyPI
package README contains complete Turkish and English instructions in the same
file, because registries render the package README as their long description.
Separate `README.en.md` files support GitHub browsing.

Use real public method names and request shapes. Document SMS sender headers
with `sourceAddr` or `source_addr`. Do not imply live Verimor API verification;
use fictional credentials and phone numbers.

## Versions and releases

TypeScript and Python use lockstep SemVer. Update both manifests and lockfiles,
write changelog and release notes, pass PR CI and clean-package smoke tests,
then tag the public `main` commit `vX.Y.Z`. Tag the same commit
`packages/go/vX.Y.Z` for the Go submodule without creating a separate GitHub
Release. Dart publication remains out of scope pending a separate decision.

The public release workflow builds and tests an npm tarball and Python
wheel/sdist once, validates a Go consumer, and publishes the same artifacts
with OIDC trusted publishing in protected `npm` and `pypi` environments. No
persistent registry tokens are used. Publication is not atomic across
registries; verify each registry independently.

## Security and support

CI does not call live Verimor endpoints or use real credentials. Never include
tokens, phone numbers, message content, or customer data in issues or PRs.
This is not an official Verimor SDK.
