[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01",
    $ContainerGroupName = "blog01"
)

Get-AzureRmContainerInstanceLog -ResourceGroupName $ResourceGroup -Name $ContainerGroupName