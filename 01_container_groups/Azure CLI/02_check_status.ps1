[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01",
    $ContainerGroupName = "blog01"
)

az container show -g $ResourceGroup -n $ContainerGroupName