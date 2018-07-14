[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost",
    $Location = "westeurope",
    $ContainerGroupName = "ghost-blog01"
)

New-AzureRmResourceGroup -Name $ResourceGroup -Location $Location
New-AzureRmContainerGroup -ResourceGroupName $ResourceGroup -Name $ContainerGroupName -Image ghost -Port 2368 -IpAddressType Public -DnsNameLabel acighost


