Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

Write-Host "Syncing archive pages from data files..."
ruby .\scripts\sync_archive_pages.rb

Write-Host "Building Jekyll site..."
bundle exec jekyll build

Write-Host ""
Write-Host "Update complete."
Write-Host "Next steps:"
Write-Host "  1. Review changes with: git status"
Write-Host "  2. Preview locally with: bundle exec jekyll serve"
Write-Host "  3. Commit and push when ready"
