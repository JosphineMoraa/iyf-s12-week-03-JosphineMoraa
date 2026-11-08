param(
    [string]$Path = "."
)

if (-not (Test-Path -LiteralPath $Path -PathType Container)) {
    throw "Directory does not exist: $Path"
}

Get-ChildItem -LiteralPath $Path -Filter "*.html" -File -Recurse -Force |
    Select-Object -ExpandProperty FullName
