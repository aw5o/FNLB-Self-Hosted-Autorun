# FNLB-Self-Hosted-Autorun

This utility enables automatic startup of your self-hosted [FNLB](https://fnlb.net/) application when Windows boots. It includes simple PowerShell scripts to register or unregister your app as a startup program.

---

## 📦 What’s Included

- `install-autostart.ps1` – Adds the FNLB app to Windows startup.
- `uninstall-autostart.ps1` – Removes the app from Windows startup.
- `run-selfhost.ps1` – Launches FNLB selfhosting application.
---

## 🚀 Quick Setup

1. Make sure you have **Node.js** installed and available in your system PATH.
2. Place `install-autostart.ps1` and `uninstall-autostart.ps1` in the **same folder** as your `index.js` FNLB app.
3. **Right-click** `install-autostart.ps1` and select **Run with PowerShell**.

> 🛡️ If you see an execution policy warning, run the following once in PowerShell:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
> ```

---

## ❌ To Remove Autostart

1. Right-click `uninstall-autostart.ps1` → **Run with PowerShell**
2. The FNLB app will no longer launch automatically with Windows.

---

## 🔗 Related Projects

- **Official FNLB Self-Hosted GitHub:**  
  [github.com/Fortnite-LobbyBot/Self-Hosted](https://github.com/Fortnite-LobbyBot/Self-Hosted)

---

## 🌐 FNLB Resources

- **Website:** [https://fnlb.net](https://fnlb.net)
- **Status Page:** [https://status.fnlb.net](https://status.fnlb.net)
- **Discord:** [https://discord.fnlb.net](https://discord.fnlb.net)

---

## 📝 Notes

- These scripts require no hardcoded paths — they automatically detect their current directory.
- The scripts launch `node index.js` using the standard `cmd` shell in the same directory.

Perfect for self-hosters who want FNLB to run on boot without modifying startup folders or system config manually.
