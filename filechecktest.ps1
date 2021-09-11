# Set Directory to Check for files
$dir = "D:/Code/Test"
# Use Child Item and datetime to identify file. Item is put in array using @() to do a true/false check.
$fileCheck = @(Get-ChildItem -Path $dir -Include Backup*.bak -Recurse | where {([datetime]::now.Date -eq $_.lastwritetime.Date)};)
# Check if File Check array has items
if ($fileCheck.Length -eq 0 ) {
# if no files write failure
Write-Host "FAILURE! No Backup File available from today."
        }
# If successful write success message
else {
    Write-Host "Success! $fileCheck is todays backup file"
}