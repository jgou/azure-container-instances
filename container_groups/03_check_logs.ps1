[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost",
    $ContainerGroupName = "ghost-blog01"
)

az container logs -g $ResourceGroup -n $ContainerGroupName