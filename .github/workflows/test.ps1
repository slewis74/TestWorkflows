

function Publish-Variables(
  [Parameter(Mandatory = $true)]
  [Hashtable] $values,
  
  [Parameter(Mandatory = $false)]
  [switch] $isSecret = $false
) {
  $values.Keys | ForEach-Object {
    $value = $values[$_]

    Write-Output "$($_)=$($value)" >> GITHUB_OUTPUT
  }
}

Publish-Variables $args[0]