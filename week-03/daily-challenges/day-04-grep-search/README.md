# Day 4: Search with grep

Practice searching file contents from a terminal. The commands below use GNU `grep`, available in Git Bash or WSL.

## Challenge

From the repository root, search all files recursively for the word `TODO`:

```bash
grep -Rni "TODO" .
```

Useful options:

- `-R`: search folders recursively
- `-n`: show line numbers
- `-i`: ignore letter case

Search only HTML files for a phrase:

```bash
grep -Rni --include="*.html" "contact" .
```

On PowerShell, the similar command is:

```powershell
Get-ChildItem -Recurse -File | Select-String -Pattern "TODO"
```

Try searching for a word that exists in this project, then change the pattern and compare the results.
