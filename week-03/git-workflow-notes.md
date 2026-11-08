# Git Workflow Notes

Use this routine to save and publish your Week 3 work:

```bash
git status
git add <file-or-folder>
git commit -m "Describe the change"
git push origin main
```

Before starting work, get the latest changes:

```bash
git pull origin main
```

Check which remote repository and branch are configured:

```bash
git remote -v
git branch --show-current
```

Good habits:

- Review `git status` before staging so unrelated files are not included.
- Use a short commit message that describes the change.
- Pull before pushing if someone else may have updated the branch.
- Do not commit passwords, tokens, or other private credentials.
