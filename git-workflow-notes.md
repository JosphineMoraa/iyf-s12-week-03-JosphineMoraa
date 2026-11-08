# Git Workflow Notes (Week 3)

## Daily workflow
1. `git status` to see what changed
2. `git add <files>` to stage
3. `git commit -m "type: message"` to save
4. `git push` to upload to GitHub

## Branches
- `git checkout -b feature/name` creates and switches to a new branch.
- `git checkout main` goes back to main.
- `git merge feature/name` brings the branch's changes into main.

## Merge conflict I created and resolved
- I changed the same line in `conflict-demo.txt` on `main` and on `feature/conflict-demo`.
- Git could not merge them automatically and marked a conflict.
- I opened the file in VS Code, chose Accept Both Changes, saved, then ran `git add` and `git commit`.
- Git also asked me to set my `user.name` and `user.email` before it would finish the merge.

## Commit message style
I used Conventional Commits: `feat:` for new work, `docs:` for notes, `fix:` for corrections, `merge:` for merges.

## What I learned
Conflicts are not errors. Git asks me to choose which change to keep.
