[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost"
)

az group delete -n $resourceGroup -y