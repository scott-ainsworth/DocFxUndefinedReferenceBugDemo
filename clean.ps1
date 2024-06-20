##
# Execute the powershell commands required to cleanup after FxDoc.
##

$ErrorActionPreference = "Stop"
$global:VerbosePreference = $VerbosePreference

Remove-Item -Recurse -Force -ErrorAction Ignore -Path 'DocumentationBuilder\_site'
Remove-Item -Recurse -Force -ErrorAction Ignore -Path 'DocumentationBuilder\api'
Remove-Item -Recurse -Force -ErrorAction Ignore -Path */bin,*/obj
