[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01"
)

Remove-AzureRmResourceGroup -Name $resourceGroup -Force