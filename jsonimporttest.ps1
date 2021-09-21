# Test 1
#$results = Invoke-WebRequest -Uri https://jsonplaceholder.typicode.com/comments | ConvertFrom-Json

#foreach($result in $results)
#{
#Write-Host "$($result.name) has the email $($result.email)"
#}

#$user = $results | ? {$_.email -match 'Lew@alysha.tv' }

#$userName = $user.name

#Write-Host = $userName

#
# Test 2
#Get Info
$results = Invoke-WebRequest -uri https://jsonplaceholder.typicode.com/users | ConvertFrom-Json
#Extract Required Fields
$ids = $results.id 
#Set total for sum
$discardTotal = 0
#Sum of each field from previous entry
$ids | ForEach-Object {$discardTotal += $_}
# Print result
if($discardTotal -eq 55)
            {
                Write-Host "$discardTotal. Looks Good!"
            }
else
            {

                Write-Host "$discardTotal. Didn't add right."

            }
# Sample variable for creating array
$sampleVal = 10

# Create array of results
$allResults = $discardTotal,$sampleVal

# Get final result
$finalScore = ($allResults | measure-object -sum).Sum

if($finalScore -eq 65)
            {
                Write-Host "$finalScore. Wooooooo!"
            }
else {
        Write-Host "$finalScore. Something went wrong"
}