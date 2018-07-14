[CmdletBinding()]
Param(
    $ResourceGroup = "AciGhost",
    $Location = "westeurope",
    $ContainerGroupName = "ghost-blog01"
)

az group create --name $ResourceGroup --location $Location
az container create -g $ResourceGroup -n $ContainerGroupName --image ghost --ports 2368 --ip-address public --dns-name-label acighost


