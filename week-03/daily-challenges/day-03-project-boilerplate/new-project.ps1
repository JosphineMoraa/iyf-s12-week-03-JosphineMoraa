param(
    [string]$ProjectPath = (Join-Path -Path (Get-Location) -ChildPath "starter-project")
)

if (Test-Path -LiteralPath $ProjectPath) {
    throw "Destination already exists: $ProjectPath"
}

$directories = @(
    (Join-Path -Path $ProjectPath -ChildPath "assets\css"),
    (Join-Path -Path $ProjectPath -ChildPath "assets\js")
)

New-Item -ItemType Directory -Path $directories -Force | Out-Null

$indexHtml = @'
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
'@

$stylesCss = @'
body {
  font-family: system-ui, sans-serif;
  line-height: 1.5;
  margin: 2rem auto;
  max-width: 48rem;
  padding: 0 1rem;
}
'@

$scriptJs = @'
console.log("Starter project is ready.");
'@

Set-Content -LiteralPath (Join-Path -Path $ProjectPath -ChildPath "index.html") -Value $indexHtml
Set-Content -LiteralPath (Join-Path -Path $directories[0] -ChildPath "styles.css") -Value $stylesCss
Set-Content -LiteralPath (Join-Path -Path $directories[1] -ChildPath "script.js") -Value $scriptJs

Write-Output "Created starter project at $ProjectPath"
