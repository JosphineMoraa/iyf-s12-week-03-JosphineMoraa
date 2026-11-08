#!/usr/bin/env bash
set -euo pipefail

project_path="${1:-starter-project}"

if [[ -e "$project_path" ]]; then
  printf 'Destination already exists: %s\n' "$project_path" >&2
  exit 1
fi

mkdir -p "$project_path/assets/css" "$project_path/assets/js"

cat > "$project_path/index.html" <<'HTML'
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>My Starter Project</title>
  <link rel="stylesheet" href="assets/css/styles.css">
  <script src="assets/js/script.js" defer></script>
</head>
<body>
  <main>
    <h1>My Starter Project</h1>
    <p>Update this page to make it your own.</p>
  </main>
</body>
</html>
HTML

cat > "$project_path/assets/css/styles.css" <<'CSS'
body {
  font-family: system-ui, sans-serif;
  line-height: 1.5;
  margin: 2rem auto;
  max-width: 48rem;
  padding: 0 1rem;
}
CSS

cat > "$project_path/assets/js/script.js" <<'JS'
console.log("Starter project is ready.");
JS

printf 'Created starter project at %s\n' "$project_path"
