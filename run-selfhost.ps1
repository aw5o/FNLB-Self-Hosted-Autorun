# FNLB Self-Hosted Runner

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Write-Host "`n[FNLB] Starting self-hosted FNLB from: $ScriptDir`n"

# Move to script directory
Set-Location $ScriptDir

# Run node index.js
try {
    node index.js
} catch {
    Write-Host "`n[Error] Failed to run FNLB:"
    Write-Host $_.Exception.Message
}

Write-Host "`n[FNLB] Process ended. Press any key to exit..."
[void][System.Console]::ReadKey($true)
