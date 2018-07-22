[CmdletBinding()]
Param(
    $ResourceGroup = "AciPrivateRegistryDemo"
)

az group delete -n $resourceGroup -y