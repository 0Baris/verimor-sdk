from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parents[1]


def release_jobs() -> dict[str, object]:
    workflow = yaml.load(
        (ROOT / ".github/workflows/release.yml").read_text(), Loader=yaml.BaseLoader
    )
    jobs = workflow["jobs"]
    assert isinstance(jobs, dict)
    return jobs


def test_release_validates_go_and_its_public_consumer() -> None:
    jobs = release_jobs()
    assert "validate-go" in jobs
    steps = jobs["validate-go"]["steps"]
    commands = [step.get("run", "") for step in steps if isinstance(step, dict)]
    assert any("go test ./..." in command for command in commands)
    assert any("smoke_go.sh" in command for command in commands)


def test_publishers_wait_for_go_validation() -> None:
    jobs = release_jobs()
    for publisher in ("publish-npm", "publish-pypi"):
        assert "validate-go" in jobs[publisher]["needs"]


def test_npm_artifact_uses_the_public_workspace_name() -> None:
    workflow = yaml.load((ROOT / ".github/workflows/ci.yml").read_text(), Loader=yaml.BaseLoader)
    for jobs in (workflow["jobs"], release_jobs()):
        commands = [
            step.get("run", "")
            for job in jobs.values()
            for step in job.get("steps", [])
            if isinstance(step, dict)
        ]
        assert any("npm pack --workspace=@bariscemant/verimor" in command for command in commands)


def test_python_jobs_enforce_ruff_formatting() -> None:
    ci = yaml.load((ROOT / ".github/workflows/ci.yml").read_text(), Loader=yaml.BaseLoader)
    for job in (ci["jobs"]["python"], release_jobs()["build-python"]):
        commands = [step.get("run", "") for step in job["steps"] if isinstance(step, dict)]
        assert any("ruff format --check" in command for command in commands)


def test_python_jobs_prepare_dependencies_before_offline_smoke() -> None:
    ci = yaml.load((ROOT / ".github/workflows/ci.yml").read_text(), Loader=yaml.BaseLoader)
    for job in (ci["jobs"]["python"], release_jobs()["build-python"]):
        commands = [step.get("run", "") for step in job["steps"] if isinstance(step, dict)]
        download = next(command for command in commands if "pip download" in command)
        assert "hatchling==1.32.0" in download
        smoke = next(command for command in commands if "smoke_package.py python" in command)
        assert "VERIMOR_WHEELHOUSE=" in smoke


def test_ci_runs_feature_branches_only_through_pull_requests() -> None:
    ci = yaml.load((ROOT / ".github/workflows/ci.yml").read_text(), Loader=yaml.BaseLoader)

    assert ci["on"]["push"] == {"branches": ["main"]}
    assert "pull_request" in ci["on"]
    assert ci["concurrency"]["cancel-in-progress"] == "true"


def test_release_creates_documented_github_release_after_publish() -> None:
    jobs = release_jobs()
    release = jobs["github-release"]

    assert release["needs"] == ["publish-npm", "publish-pypi", "validate-go"]
    assert release["permissions"] == {"contents": "write"}
    command = "\n".join(step.get("run", "") for step in release["steps"] if isinstance(step, dict))
    assert "gh release create" in command
    assert "--verify-tag" in command
    assert "--generate-notes" in command
