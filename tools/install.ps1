$ErrorActionPreference = 'Stop'

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$sourceRoot = Join-Path $repositoryRoot 'skills'
$skillNames = @(
    'create-issue',
    'resolve-issue',
    'learn-skill',
    'security-review',
    'test-changes',
    'manage-version-control'
)
$targets = @(
    (Join-Path $env:USERPROFILE '.codex\skills'),
    (Join-Path $env:USERPROFILE '.claude\skills'),
    (Join-Path $env:USERPROFILE '.cursor\skills'),
    (Join-Path $env:USERPROFILE '.gemini\skills'),
    (Join-Path $env:USERPROFILE '.agents\skills')
)

foreach ($targetRoot in $targets) {
    New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null

    foreach ($skillName in $skillNames) {
        $source = Join-Path $sourceRoot $skillName
        $destination = Join-Path $targetRoot $skillName

        if (-not (Test-Path -LiteralPath (Join-Path $source 'SKILL.md'))) {
            throw "Missing SKILL.md for $skillName"
        }

        New-Item -ItemType Directory -Force -Path $destination | Out-Null
        Copy-Item -Path (Join-Path $source '*') -Destination $destination -Recurse -Force
    }

    Write-Host "Installed $($skillNames.Count) skills to $targetRoot"
}
