#!/usr/bin/env python3

"""
Personal portfolio helper script.

This file is not required by GitHub Pages.
GitHub Pages serves the static index.html file.

Purpose:
- Keeps a small Python example in the repository.
- Demonstrates simple project metadata.
- Can be used locally for quick portfolio checks.
"""

from datetime import datetime, timezone


PROFILE = {
    "name": "Franklin Ajero",
    "role": "DevOps & Site Reliability Engineer",
    "focus": [
        "DevOps Automation",
        "Site Reliability Engineering",
        "Platform Engineering",
        "Cloud Infrastructure",
        "Observability",
        "CI/CD",
    ],
    "website": "https://franklindot04.github.io",
    "github": "https://github.com/Franklindot04",
}


def print_profile() -> None:
    """Print portfolio metadata."""
    print("Personal Portfolio")
    print("==================")
    print(f"Name: {PROFILE['name']}")
    print(f"Role: {PROFILE['role']}")
    print(f"Website: {PROFILE['website']}")
    print(f"GitHub: {PROFILE['github']}")
    print()
    print("Engineering Focus:")
    for item in PROFILE["focus"]:
        print(f"- {item}")
    print()
    print(f"Generated at: {datetime.now(timezone.utc).isoformat()}")


if __name__ == "__main__":
    print_profile()