# FNLB Self-Hosted Autostart Installer

$AppName = "FNLB-SelfHosted"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$Command = "cmd /c cd /d `"$ScriptDir`" && node index.js"

$RegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"

try {
    New-ItemProperty -Path $RegPath -Name $AppName -Value $Command -PropertyType String -Force | Out-Null
    Write-Host "✅ FNLB will now autostart with Windows."
} catch {
    Write-Error "❌ Failed to set autostart: $_"
}
