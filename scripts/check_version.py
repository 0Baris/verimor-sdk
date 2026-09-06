#!/usr/bin/env python3
from __future__ import annotations

import json
import re
import sys
import tomllib
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
RELEASE_TAG = re.compile(r"^v(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)$")


def validate_versions(tag: str, root: Path = ROOT) -> str:
    match = RELEASE_TAG.fullmatch(tag)
    if match is None:
        raise ValueError("Release tag must have the exact form vX.Y.Z")
    version = tag[1:]
    typescript = json.loads((root / "packages" / "typescript" / "package.json").read_text())[
        "version"
    ]
    with (root / "packages" / "python" / "pyproject.toml").open("rb") as file:
        python = tomllib.load(file)["project"]["version"]
    if typescript != version or python != version:
        raise ValueError(
            f"Tag {version}, TypeScript {typescript}, and Python {python} versions do not match"
        )
    return version


def main() -> None:
    if len(sys.argv) != 2:
        raise SystemExit("usage: check_version.py vX.Y.Z")
    try:
        print(validate_versions(sys.argv[1]))
    except ValueError as error:
        raise SystemExit(str(error)) from error


if __name__ == "__main__":
    main()
