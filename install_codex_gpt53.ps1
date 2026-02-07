param(
    [string]$Model = "gpt-5.3-codex",
    [string]$Reasoning = "xhigh",
    [string]$Verbosity = "high"
)

$ErrorActionPreference = "Stop"

$codexDir = Join-Path $HOME ".codex"
$configPath = Join-Path $codexDir "config.toml"

if (-not (Test-Path $codexDir)) {
    New-Item -ItemType Directory -Path $codexDir | Out-Null
}

if (-not (Test-Path $configPath)) {
    Set-Content -Path $configPath -Encoding UTF8 -Value @(
        "model = `"$Model`""
        "model_reasoning_effort = `"$Reasoning`""
        "model_verbosity = `"$Verbosity`""
    )
    Write-Host "Created: $configPath"
    Write-Host "Done. Restart VS Code/Codex to take effect."
    exit 0
}

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$backupPath = "$configPath.bak.$timestamp"
Copy-Item -Path $configPath -Destination $backupPath -Force

$content = Get-Content -Path $configPath -Raw -Encoding UTF8

function Upsert-Key {
    param(
        [string]$Text,
        [string]$Key,
        [string]$Value
    )
    $pattern = "(?m)^\s*$([regex]::Escape($Key))\s*=\s*.*$"
    $line = "$Key = `"$Value`""
    if ([regex]::IsMatch($Text, $pattern)) {
        return [regex]::Replace($Text, $pattern, $line, 1)
    }
    if ($Text.Length -gt 0 -and -not $Text.EndsWith("`n")) {
        $Text += "`r`n"
    }
    return $Text + $line + "`r`n"
}

$content = Upsert-Key -Text $content -Key "model" -Value $Model
$content = Upsert-Key -Text $content -Key "model_reasoning_effort" -Value $Reasoning
$content = Upsert-Key -Text $content -Key "model_verbosity" -Value $Verbosity

Set-Content -Path $configPath -Encoding UTF8 -Value $content

Write-Host "Updated: $configPath"
Write-Host "Backup : $backupPath"
Write-Host "Set model                = $Model"
Write-Host "Set model_reasoning_effort = $Reasoning"
Write-Host "Set model_verbosity      = $Verbosity"
Write-Host "Done. Restart VS Code/Codex to take effect."
