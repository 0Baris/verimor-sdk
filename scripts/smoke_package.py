"""Install an already-built artifact in an isolated directory and import its public API."""

from __future__ import annotations

import argparse
import os
import subprocess
import sys
import tempfile
from pathlib import Path


def smoke(kind: str, artifact: Path) -> None:
    artifact = artifact.resolve(strict=True)
    with tempfile.TemporaryDirectory(prefix="verimor-install-") as directory:
        root = Path(directory)
        if kind == "npm":
            subprocess.run(
                ["npm", "install", "--ignore-scripts", "--no-audit", "--no-fund", str(artifact)],
                cwd=root,
                check=True,
            )
            code = """
import * as sdk from '@bariscemant/verimor';
for (const entry of ['sms', 'switch', 'whatsapp']) await import('@bariscemant/verimor/' + entry);
const fakeFetch = async () => new Response('42');
const sms = sdk.createSmsClient({username: 'u', password: 'p', fetch: fakeFetch});
if (await sms.balance() !== 42) throw Error('balance');
if (!sdk.createSwitchClient({apiKey: 'k'}).raw) throw Error('switch');
if (!sdk.createWhatsAppClient({apiKey: 'k'}).raw || !sdk.VerimorApiError) throw Error('exports');
"""
            subprocess.run(["node", "--input-type=module", "-e", code], cwd=root, check=True)
        else:
            venv = root / "venv"
            subprocess.run(["uv", "venv", str(venv), "--python", sys.executable], check=True)
            python = venv / ("Scripts/python.exe" if os.name == "nt" else "bin/python")
            subprocess.run(
                ["uv", "pip", "install", "--python", str(python), str(artifact)], check=True
            )
            code = """
import importlib, pkgutil, verimor
from verimor import SmsClient, AsyncSmsClient, SwitchClient, AsyncSwitchClient
from verimor import WhatsAppClient, AsyncWhatsAppClient
for module in pkgutil.walk_packages(verimor.__path__, verimor.__name__ + '.'):
    importlib.import_module(module.name)
"""
            subprocess.run([str(python), "-I", "-c", code], cwd=root, check=True)
    print(f"Clean install/import passed: {artifact.name}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("kind", choices=["npm", "python"])
    parser.add_argument("artifacts", nargs="+", type=Path)
    args = parser.parse_args()
    for artifact in args.artifacts:
        smoke(args.kind, artifact)
