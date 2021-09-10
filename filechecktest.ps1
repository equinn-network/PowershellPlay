$dir = "D:/Code/Test"

$fileCheck = Test-Path -Path $dir | where {([datetime]::now.Date -eq $_.lastwritetime.Date)};

if($fileCheck -eq $true) {
    $fileName = Get-ChildItem -Path $dir | where {([datetime]::now.Date -eq $_.lastwritetime.Date)};

    Write-Host $fileName
}
