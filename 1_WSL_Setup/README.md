# 🚀 WSL + Ubuntu 22.04 Installation Guide

This guide explains how to install **WSL2** and **Ubuntu 22.04 LTS** on Windows step-by-step.


# ✅ System Requirements

Before starting, make sure you have:

- Windows 10 (Version 2004 or higher)
OR
- Windows 11
- Internet connection
- Administrator access

---

# 🔍 Step 1 — Check Windows Version

Press:

```text
Windows + R
```

Type:

```text
winver
```

and press Enter.

Make sure your system is:
- Windows 10 (2004+)
OR
- Windows 11

---

# ⚡ Step 2 — Check Virtualization

1. Open Task Manager:

```text
Ctrl + Shift + Esc
```

2. Go to:

```text
Performance → CPU
```

3. Check:

```text
Virtualization : Enabled
```

✅ If virtualization is enabled, continue to the next step.

---

## ❌ If Virtualization is Disabled

Follow these steps:

1. Restart your PC

2. Open BIOS settings  
(Common keys: `F2`, `Delete`, `Esc`, `F10`)

3. Find virtualization settings

4. Enable one of these options:

- Intel VT-x
- Intel Virtualization Technology
- AMD-V
- SVM Mode

5. Save changes and restart Windows

---

# 🖥️ Step 3 — Open PowerShell as Administrator

1. Open Start Menu

2. Search:

```powershell
PowerShell
```

3. Right click and select:

```text
Run as administrator
```

---

# 🔧 Step 4 — Enable WSL Feature

Run the following command:

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

---

# 🔧 Step 5 — Enable Virtual Machine Platform

Run:

```powershell
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

---

# 🔄 Step 6 — Restart Your PC

Restart your computer after enabling features.

---

# 📥 Step 7 — Install WSL

Open PowerShell as Administrator again and run:

```powershell
wsl --install
```

Wait for installation to complete.

---

# ⚙️ Step 8 — Set WSL2 as Default

Run:

```powershell
wsl --set-default-version 2
```

---

# 🐧 Step 9 — Install Ubuntu 22.04 LTS

Run:

```powershell
wsl --install -d Ubuntu-22.04
```

Ubuntu installation will start automatically.

---

# 👤 Step 10 — Create Username & Password

After installation completes, you will see:

```text
Enter new UNIX username:
```

Create:
- Username
- Password

⚠️ Password will not be visible while typing.

---

# 🔄 Step 11 — Update Ubuntu

Run these commands inside Ubuntu terminal:

```bash
sudo apt update
sudo apt upgrade -y
```

---

# ✅ Step 12 — Verify Installation

Run:

```powershell
wsl -l -v
```

Expected output:

```text
NAME            STATE           VERSION
Ubuntu-22.04    Running         2
```

---

# 🛠️ Useful WSL Commands

| Command | Description |
|---|---|
| `wsl` | Start Ubuntu |
| `wsl --shutdown` | Stop WSL |
| `wsl -l -v` | List installed distributions |
| `wsl --update` | Update WSL |
| `wsl --status` | Show WSL status |
| `exit` | Exit Ubuntu terminal |

---

# ❗ Troubleshooting

## Ubuntu Closes Automatically

Run:

```powershell
wsl --shutdown
wsl --update
```

Then restart Windows.

---

## Check WSL Status

```powershell
wsl --status
```


# ✨ Author
Suraj 
