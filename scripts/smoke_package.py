"""Exercise built packages from clean consumer directories without a live API."""

from __future__ import annotations

import argparse
import os
import subprocess
import sys
import tarfile
import tempfile
import zipfile
from pathlib import Path


def assert_publishable_contents(artifact: Path) -> None:
    """Reject generator/private paths and local dependencies in distributable artifacts."""
    if artifact.suffix == ".whl":
        with zipfile.ZipFile(artifact) as archive:
            names = archive.namelist()
            metadata = "\n".join(
                archive.read(name).decode(errors="ignore")
                for name in names
                if name.endswith("METADATA")
            )
    else:
        with tarfile.open(artifact) as archive:
            names = archive.getnames()
            metadata = "\n".join(
                member_file.read().decode(errors="ignore")
                for member in archive.getmembers()
                if member.isfile() and member.name.endswith(("package.json", "PKG-INFO"))
                if (member_file := archive.extractfile(member)) is not None
            )
    forbidden = ("generator", "spec/", "sources.json", ".env")
    leaked = [name for name in names if any(part in name.lower() for part in forbidden)]
    if leaked:
        raise RuntimeError(f"non-consumer files in {artifact.name}: {leaked}")
    if "file:" in metadata:
        raise RuntimeError(f"local dependency in {artifact.name}")


def smoke(kind: str, artifact: Path) -> None:
    artifact = artifact.resolve(strict=True)
    assert_publishable_contents(artifact)
    with tempfile.TemporaryDirectory(prefix="verimor-install-") as directory:
        root = Path(directory)
        if kind == "npm":
            npm_environment = {
                **os.environ,
                "npm_config_cache": str(root / "npm-cache"),
                "npm_config_offline": "true",
            }
            source_root = Path(__file__).resolve().parents[1]
            local_dependencies = []
            for dependency in ("openapi-fetch", "openapi-typescript-helpers"):
                before = set(root.glob("*.tgz"))
                subprocess.run(
                    [
                        "npm",
                        "pack",
                        str(source_root / "node_modules" / dependency),
                        "--pack-destination",
                        str(root),
                        "--silent",
                    ],
                    cwd=root,
                    env=npm_environment,
                    check=True,
                )
                created = set(root.glob("*.tgz")) - before
                if len(created) != 1:
                    raise RuntimeError(f"could not package local dependency {dependency}")
                local_dependencies.append(next(iter(created)))
            subprocess.run(
                [
                    "npm",
                    "install",
                    "--ignore-scripts",
                    "--no-audit",
                    "--no-fund",
                    str(artifact),
                    *(str(dependency) for dependency in local_dependencies),
                ],
                cwd=root,
                env=npm_environment,
                check=True,
            )
            consumer = root / "consumer.mts"
            consumer.write_text(
                """
import type { paths } from '@bariscemant/verimor/sms';
import { createSmsClient } from '@bariscemant/verimor';

const typedPath: keyof paths = '/v2/balance';
createSmsClient({ username: 'u', password: 'p' }).status({ id: 1 });
void typedPath;
"""
            )
            typescript = Path(__file__).resolve().parents[1] / "node_modules/.bin/tsc"
            subprocess.run(
                [
                    str(typescript),
                    "--target",
                    "es2022",
                    "--module",
                    "nodenext",
                    "--moduleResolution",
                    "nodenext",
                    "--strict",
                    "--noEmit",
                    str(consumer),
                ],
                cwd=root,
                check=True,
            )
            consumer.write_text(
                """
import { createSmsClient } from '@bariscemant/verimor';
createSmsClient({ username: 'u', password: 'p' }).status({});
"""
            )
            rejected = subprocess.run(
                [
                    str(typescript),
                    "--target",
                    "es2022",
                    "--module",
                    "nodenext",
                    "--moduleResolution",
                    "nodenext",
                    "--strict",
                    "--noEmit",
                    str(consumer),
                ],
                cwd=root,
                check=False,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
            )
            if rejected.returncode == 0:
                raise RuntimeError("invalid TypeScript client usage compiled")
            runtime_smoke = root / "consumer.mjs"
            runtime_smoke.write_text((source_root / "scripts/smoke_typescript.mjs").read_text())
            subprocess.run(["node", runtime_smoke], cwd=root, check=True)
        else:
            venv = root / "venv"
            subprocess.run(["uv", "venv", str(venv), "--python", sys.executable], check=True)
            python = venv / ("Scripts/python.exe" if os.name == "nt" else "bin/python")
            install = ["uv", "pip", "install", "--offline", "--python", str(python)]
            if wheelhouse := os.environ.get("VERIMOR_WHEELHOUSE"):
                install.extend(["--find-links", wheelhouse])
            subprocess.run(
                [*install, str(artifact)], check=True
            )
            runtime_smoke = root / "consumer.py"
            source_root = Path(__file__).resolve().parents[1]
            runtime_smoke.write_text((source_root / "scripts/smoke_python.py").read_text())
            subprocess.run([str(python), "-I", runtime_smoke], cwd=root, check=True)
    print(f"Clean install/import passed: {artifact.name}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("kind", choices=["npm", "python"])
    parser.add_argument("artifacts", nargs="+", type=Path)
    args = parser.parse_args()
    for artifact in args.artifacts:
        smoke(args.kind, artifact)
