# FNLB-Self-Hosted-Autorun

This utility enables automatic startup of your self-hosted [FNLB](https://fnlb.net/) application when Windows boots. It includes both installation and uninstallation scripts using PowerShell.

---

## 📦 What’s Included

- `install-autostart.ps1` – Adds the FNLB app to Windows startup.
- `uninstall-autostart.ps1` – Removes the app from Windows startup.

---

## 🚀 Quick Setup

1. Place the `install-autostart.ps1` and `uninstall-autostart.ps1` scripts in the **same folder** as your `index.js` FNLB app.
2. **Right-click** `install-autostart.ps1` and select **Run with PowerShell**.

> 🛡️ If you see an execution policy warning, run the following once in PowerShell:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
> ```

---

## ❌ To Remove Autostart

1. Right-click `uninstall-autostart.ps1` → **Run with PowerShell**
2. The FNLB app will no longer launch automatically with Windows.

---

## 🌐 FNLB Resources

- **Website:** [fnlb.net](https://fnlb.net/)
- **Status Page:** [status.fnlb.net](https://status.fnlb.net/)
- **Discord:** [discord.fnlb.net](https://discord.fnlb.net/)

---

## 📂 Repository Use

You can safely include these scripts in your self-hosted FNLB GitHub repo or distribute them alongside your cluster launcher.

No path configuration is needed — the script auto-detects its folder and launches `node index.js` from there.
