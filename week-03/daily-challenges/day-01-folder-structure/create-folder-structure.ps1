param(
    [string]$ProjectName = "my-project"
)

$projectPath = Join-Path -Path (Get-Location) -ChildPath $ProjectName
$directories = @(
    "assets\css",
    "assets\images",
    "assets\js",
    "docs",
    "src",
    "tests"
)

New-Item -ItemType Directory -Path $projectPath -Force | Out-Null

foreach ($directory in $directories) {
    $path = Join-Path -Path $projectPath -ChildPath $directory
    New-Item -ItemType Directory -Path $path -Force | Out-Null
}

Write-Output "Created project structure at $projectPath"
