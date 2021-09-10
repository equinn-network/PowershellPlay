$results = Invoke-WebRequest -Uri https://jsonplaceholder.typicode.com/comments | ConvertFrom-Json

#foreach($result in $results)
#{
#Write-Host "$($result.name) has the email $($result.email)"
#}

$user = $results | ? {$_.email -match 'Lew@alysha.tv' }

$userName = $user.name

Write-Host = $userName