##
# Execute the powershell commands required in the FxDoc build step.
##

[CmdletBinding()]

$ErrorActionPreference = "Stop"
$global:VerbosePreference = $VerbosePreference

# Preparation: Ensure docfx is available
dotnet tool restore

# Preparation: Ensure a clean slate
Write-Verbose 'Ensure a clean slate'
& (Join-Path $PSScriptRoot 'clean.ps1')

# Preparation: Build the project for easy access to the .xml file
Write-Verbose 'Build projects (dotnet build)'
dotnet build --configuration Release --verbosity quiet

# Build the documentation
Write-Verbose 'Building documentation'
Push-Location DocumentationBuilder
try {
    dotnet tool run docfx
} finally {
    Pop-Location
}

# end
