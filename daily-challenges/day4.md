# Day 4

## Challenge
Practise `grep` to search file contents.

## Command I used
`grep -rn "Portfolio" .. --include="*.html" --include="*.md"`

## What it does
`-r` searches folders, `-n` shows line numbers, `--include` limits the file types.

## Problem I faced
grep also showed Permission denied for protected Windows folders. I limited the search to my project files with --include.
