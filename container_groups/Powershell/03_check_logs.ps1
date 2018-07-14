[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost",
    $ContainerGroupName = "ghost-blog01"
)

Get-AzureRmContainerInstanceLog -ResourceGroupName $ResourceGroup -Name $ContainerGroupName