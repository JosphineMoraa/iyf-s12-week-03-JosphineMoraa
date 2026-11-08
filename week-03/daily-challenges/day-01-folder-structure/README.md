# Day 1: Create a Folder Structure

Practice building a project directory from the terminal.

## Challenge

Run `create-folder-structure.ps1` from PowerShell:

```powershell
.\create-folder-structure.ps1
```

By default, it creates this structure in the current directory:

```text
my-project/
├── assets/
│   ├── css/
│   ├── images/
│   └── js/
├── docs/
├── src/
└── tests/
```

Pass a different folder name as an argument to customize the project:

```powershell
.\create-folder-structure.ps1 portfolio
```

Use `Get-ChildItem -Recurse` to inspect the result.
