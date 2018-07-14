[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost",
    $ContainerGroupName = "ghost-blog01"
)

az container show -g $ResourceGroup -n $ContainerGroupName