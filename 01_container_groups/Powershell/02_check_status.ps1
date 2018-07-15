[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01",
    $ContainerGroupName = "blog01"
)

Get-AzureRmContainerGroup -ResourceGroupName $ResourceGroup -Name $ContainerGroupName