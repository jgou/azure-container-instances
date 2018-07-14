[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost",
    $ContainerGroupName = "ghost-blog01"
)

Get-AzureRmContainerGroup -ResourceGroupName $ResourceGroup -Name $ContainerGroupName