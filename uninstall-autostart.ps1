# FNLB Self-Hosted Autostart Uninstaller

$AppName = "FNLB-SelfHosted"
$RegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"

try {
    Remove-ItemProperty -Path $RegPath -Name $AppName -ErrorAction Stop
    Write-Host "✅ FNLB autostart entry removed."
} catch {
    Write-Warning "ℹ️ Autostart entry not found or already removed."
}
