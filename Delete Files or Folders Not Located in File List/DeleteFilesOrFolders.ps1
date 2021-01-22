# Variables
$DirectoryList = Get-ChildItem -Path ./UserFiles -Name
$FileList = Import-Csv -Path ./FileList.csv
$FileDeleteList = Compare-Object -ReferenceObject $FileList.FileName -DifferenceObject $DirectoryList

# Code
Foreach ($InputObject in $FileDeleteList.InputObject) {
    Write-Output "$InputObject is being deleted."
    Remove-Item -Recurse ./UserFiles/$InputObject
}