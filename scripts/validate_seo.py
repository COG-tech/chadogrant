#!/usr/bin/env python3
"""Validate SEO basics for the generated Jekyll site."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


TITLE_RE = re.compile(r"<title>(.*?)</title>", re.IGNORECASE | re.DOTALL)
DESCRIPTION_RE = re.compile(
    r'<meta\s+name=["\']description["\']\s+content=["\']([^"\']+)["\']',
    re.IGNORECASE,
)
CANONICAL_RE = re.compile(
    r'<link\s+rel=["\']canonical["\']\s+href=["\']([^"\']+)["\']',
    re.IGNORECASE,
)
JSONLD_RE = re.compile(
    r'<script[^>]*type=["\']application/ld\+json["\'][^>]*>(.*?)</script>',
    re.IGNORECASE | re.DOTALL,
)
PLACEHOLDER_LINK_RE = re.compile(r'href=["\']#["\']', re.IGNORECASE)


def check_html_file(path: Path) -> list[str]:
    issues: list[str] = []
    text = path.read_text(encoding="utf-8", errors="replace")

    if "<html" not in text.lower():
        return issues

    if not TITLE_RE.search(text):
        issues.append("missing <title>")
    if not DESCRIPTION_RE.search(text):
        issues.append("missing meta description")
    if not CANONICAL_RE.search(text):
        issues.append("missing canonical URL")

    if PLACEHOLDER_LINK_RE.search(text):
        issues.append('contains placeholder href="#" link')

    for index, match in enumerate(JSONLD_RE.finditer(text), start=1):
        block = match.group(1).strip()
        if not block:
            issues.append(f"JSON-LD block {index} is empty")
            continue
        try:
            json.loads(block)
        except json.JSONDecodeError as exc:
            issues.append(
                f"invalid JSON-LD block {index}: {exc.msg} at line {exc.lineno} column {exc.colno}"
            )

    return issues


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--root",
        type=Path,
        default=Path("_site"),
        help="Directory containing generated HTML, sitemap.xml, and robots.txt.",
    )
    args = parser.parse_args()

    root = args.root
    if not root.exists():
        print(f"FAIL: root directory does not exist: {root}")
        return 1

    html_files = sorted(path for path in root.rglob("*.html") if path.is_file())
    if not html_files:
        print(f"FAIL: no HTML files found under {root}")
        return 1

    total_issues = 0
    for path in html_files:
        issues = check_html_file(path)
        if issues:
            total_issues += len(issues)
            for issue in issues:
                print(f"FAIL: {path.relative_to(root)} - {issue}")

    sitemap = root / "sitemap.xml"
    robots = root / "robots.txt"
    if sitemap.exists():
        print("PASS: sitemap.xml exists")
    else:
        total_issues += 1
        print("FAIL: sitemap.xml is missing")

    if robots.exists():
        print("PASS: robots.txt exists")
    else:
        total_issues += 1
        print("FAIL: robots.txt is missing")

    if total_issues:
        print(f"FAILED: {total_issues} issue(s) found across {len(html_files)} HTML file(s).")
        return 1

    print(f"PASS: validated {len(html_files)} HTML file(s) with no SEO issues.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
