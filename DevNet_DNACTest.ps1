$user = "devnetuser"
$pw = "Cisco123!"

$healthURL = "https://sandboxdnac.cisco.com/dna/intent/api/v1/network-health"

$credString = "$user" + ":" + "$pw"
$credBAse64= "Basic " + ([Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($credString)))

