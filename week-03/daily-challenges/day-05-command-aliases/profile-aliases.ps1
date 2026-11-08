Set-Alias -Name ll -Value Get-ChildItem
Set-Alias -Name which -Value Get-Command

function mkcd {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    New-Item -ItemType Directory -Path $Path -Force | Out-Null
    Set-Location -Path $Path
}
