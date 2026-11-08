# Day 2: Find HTML Files

Practice locating every `.html` file below a directory.

## Challenge

Run the included PowerShell script and pass the directory to search:

```powershell
.\find-html-files.ps1 -Path ..\..
```

The script searches recursively and prints the full path of each matching file. If you omit `-Path`, it searches the current directory:

```powershell
.\find-html-files.ps1
```

Try the equivalent commands in other shells:

```bash
find . -type f -name "*.html"
```

```powershell
Get-ChildItem -Path . -Filter *.html -File -Recurse
```
