[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01",
    $Location = "westeurope",
    $ContainerGroupName = "blog01"
)

New-AzureRmResourceGroup -Name $ResourceGroup -Location $Location
New-AzureRmContainerGroup -ResourceGroupName $ResourceGroup -Name $ContainerGroupName -Image ghost -Port 2368 -IpAddressType Public -DnsNameLabel acighost


