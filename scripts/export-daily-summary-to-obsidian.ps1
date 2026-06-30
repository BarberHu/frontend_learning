param(
  [string]$VaultPath,
  [string]$ConfigPath = "obsidian-sync.config.json",
  [string]$Date = (Get-Date -Format "yyyy-MM-dd"),
  [string]$Summary = "",
  [string]$Artifact = "",
  [string]$CodexReview = ""
)

$ErrorActionPreference = "Stop"

function Read-JsonFile($Path) {
  if (-not (Test-Path -LiteralPath $Path)) {
    return $null
  }
  return Get-Content -LiteralPath $Path -Raw -Encoding UTF8 | ConvertFrom-Json
}

$repoRoot = Split-Path -Parent $PSScriptRoot
$progressPath = Join-Path $repoRoot "progress.json"
$progress = Read-JsonFile $progressPath

if (-not $progress) {
  throw "progress.json not found at $progressPath"
}

$config = Read-JsonFile (Join-Path $repoRoot $ConfigPath)

if (-not $VaultPath -and $config -and $config.vaultPath) {
  $VaultPath = $config.vaultPath
}

if (-not $VaultPath) {
  throw "Missing VaultPath. Pass -VaultPath or create obsidian-sync.config.json from obsidian-sync.config.example.json."
}

$targetFolder = "Learning/Frontend"
if ($config -and $config.targetFolder) {
  $targetFolder = $config.targetFolder
}

$targetDir = Join-Path $VaultPath $targetFolder
New-Item -ItemType Directory -Force -Path $targetDir | Out-Null

$safeDate = $Date
$noteName = "$safeDate-frontend-learning.md"
if ($config -and $config.noteNamePattern) {
  $noteName = $config.noteNamePattern.Replace("{date}", $safeDate)
}

$notePath = Join-Path $targetDir $noteName

$week = $progress.currentWeek
$phase = $progress.currentPhase
$activeLog = $progress.activeLog
$todayTopic = $progress.today.mainTopic
$visibleArtifact = $progress.today.visibleArtifact
$nextActions = $progress.nextMicroActions -join "`n- "

if (-not $todayTopic) { $todayTopic = "TODO" }
if (-not $visibleArtifact) { $visibleArtifact = "TODO" }
if (-not $Summary) { $Summary = "TODO: add what you can explain today." }
if (-not $Artifact) { $Artifact = $visibleArtifact }
if (-not $CodexReview) { $CodexReview = "TODO: add the key issue found by Codex review." }

$content = @"
---
type: frontend-learning-daily
date: $safeDate
week: $week
phase: $phase
tags:
  - frontend
  - learning-log
  - codex
---

# $safeDate Frontend Learning Summary

## Main Topic

$todayTopic

## Artifact

$Artifact

## What I Can Explain

$Summary

## Blockers

TODO

## Codex Review Finding

$CodexReview

## Next Micro Actions

- $nextActions

## Repository Links

- Weekly log: $activeLog
- Progress: progress.json
- Artifacts: artifacts.md
- Review queue: review-queue.md
"@

Set-Content -LiteralPath $notePath -Value $content -Encoding UTF8
Write-Output $notePath
