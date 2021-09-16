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

$results = Invoke-WebRequest -uri https://jsonplaceholder.typicode.com/users | ConvertFrom-Json

$ids = $results.id 

$discardTotal = 0

$ids | ForEach {$discardTotal += $_}

if($discardTotal -eq 55)
            {
                Write-Host " $discardTotal . Looks Good!"
            }
else
            {

                Write-Host "Result. '$discardTotal'.Low. Didn't add right"

            }
