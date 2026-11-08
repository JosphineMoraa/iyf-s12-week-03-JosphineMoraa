# Day 5: Command Aliases

Create shortcuts for commands you use often in PowerShell.

## Challenge

Load the included aliases into the current PowerShell session:

```powershell
. .\profile-aliases.ps1
```

Try the shortcuts:

```powershell
ll
which git
mkcd practice-folder
```

The first two are aliases; `mkcd` is a function that creates a directory and moves into it.

To load these shortcuts automatically in new PowerShell sessions, append the script's full path to your PowerShell profile:

```powershell
$profileDirectory = Split-Path -Parent $PROFILE
New-Item -ItemType Directory -Path $profileDirectory -Force | Out-Null
Add-Content -Path $PROFILE -Value ". '$((Resolve-Path .\profile-aliases.ps1).Path)'"
```

Open a new PowerShell window and test the commands again. Remove that line from `$PROFILE` if you no longer want the shortcuts.
