[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost"
)

Remove-AzureRmResourceGroup -Name $resourceGroup -Force