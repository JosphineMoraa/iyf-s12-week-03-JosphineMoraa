# Day 2

## Challenge
Find all `.html` files in a directory.

## Command I used
`find .. -name "*.html"`

## What it does
`find` searches folders, and `-name "*.html"` matches only HTML files.

## Problem I faced
find showed Permission denied errors because it searched system folders outside my project. I fixed it by running it from inside my repo.
