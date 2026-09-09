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
    workflow = yaml.load(
        (ROOT / ".github/workflows/ci.yml").read_text(), Loader=yaml.BaseLoader
    )
    for jobs in (workflow["jobs"], release_jobs()):
        commands = [
            step.get("run", "")
            for job in jobs.values()
            for step in job.get("steps", [])
            if isinstance(step, dict)
        ]
        assert any(
            "npm pack --workspace=@bariscemant/verimor" in command for command in commands
        )
