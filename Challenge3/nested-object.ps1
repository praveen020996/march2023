param(
  [Parameter(Mandatory=$true)]
  [String]$Object,
  [Parameter(Mandatory=$true)]
  [String]$Key
)

#Convert the JSON string to a hashtable object
$objectHash = $Object| ConvertFrom-Json -AsHashtable

#Split the key based on the delimeter
$keys = $Key.Split('/')

#Loop through the keys until the value is found
foreach($k in $keys) {
    try {
        $value = $objectHash[$k]
        $objectHash = $value
    }
    catch {
        Write-Error "An error occured. There might be something wrong with the key path"
        throw $_.Exception.Message
    }
}
Write-Host ""
Write-Host "Final Value is: "$value


