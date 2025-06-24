# FNLB Self-Hosted Autostart Installer

$AppName = "FNLB-SelfHosted"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$Command = "cmd /c cd /d `"$ScriptDir`" && node index.js"

$RegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"

try {
    New-ItemProperty -Path $RegPath -Name $AppName -Value $Command -PropertyType String -Force | Out-Null
    Write-Host "`n[OK] FNLB will now autostart with Windows."
} catch {
    Write-Host "`n[Error] Failed to set autostart."
    Write-Host "Error: $($_.Exception.Message)"
}

Write-Host "`nPress any key to exit..."
[void][System.Console]::ReadKey($true)
