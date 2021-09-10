$dir = "D:/Code/Test"

$fileCheck = Get-ChildItem -Path $dir -Recurse | where {([datetime]::now.Date -eq $_.lastwritetime.Date)};

$fileTest = Test-Path $fileCheck.FullName

if ($fileTest -eq $true ) {

Write-Host "Backup Successful. $fileCheck is todays backup."
        }
else {
    Write-Host "FAILURE! No Backup File available from today."
}