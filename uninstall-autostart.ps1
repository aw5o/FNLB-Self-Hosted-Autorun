# FNLB Self-Hosted Autostart Uninstaller

$AppName = "FNLB-SelfHosted"
$RegPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"

try {
    Remove-ItemProperty -Path $RegPath -Name $AppName -ErrorAction Stop
    Write-Host "`n[OK] FNLB autostart entry removed."
} catch {
    Write-Host "`n[Info] Could not remove autostart entry (maybe it wasn't set)."
    Write-Host "Error: $($_.Exception.Message)"
}

Write-Host "`nPress any key to exit..."
[void][System.Console]::ReadKey($true)
