#!/bin/bash
# Usage: bash new-project.sh project-name
mkdir -p "$1"/css "$1"/js "$1"/images
touch "$1"/index.html "$1"/css/style.css "$1"/js/app.js
echo "# $1" > "$1"/README.md
echo "Created project: $1"
