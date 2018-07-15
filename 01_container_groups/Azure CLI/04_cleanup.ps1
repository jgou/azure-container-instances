[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01"
)

az group delete -n $resourceGroup -y