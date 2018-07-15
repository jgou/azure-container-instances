[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01",
    $ContainerGroupName = "blog01"
)

az container logs -g $ResourceGroup -n $ContainerGroupName