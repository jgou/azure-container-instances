[CmdletBinding()]
Param(
    $ResourceGroup = "AciDemo01",
    $Location = "westeurope",
    $ContainerGroupName = "blog01",
    $IsLinuxSample = $True
)

az group create --name $ResourceGroup --location $Location

if ($IsLinuxSample) {
    # This is a sample of Linux image
    # After creating you can access the Ghost platform through http://acighost.westeurope.azurecontainer.io:2368/
    # Or access the administration through http://acighost.westeurope.azurecontainer.io:2368/ghost
    az container create -g $ResourceGroup -n $ContainerGroupName --image ghost `
    --ports 2368 `
    --ip-address public --dns-name-label acighost
} else {
    # This is a sample of Windows image
    # After creating and get the container running, the miniblogcore (v1 tag) will be accessible
    # through http://miniblog-win.westeurope.azurecontainer.io
    az container create -g $ResourceGroup -n $ContainerGroupName --image markheath/miniblogcore:v1 `
    --ip-address public --dns-name-label miniblog-win `
    --os-type windows --memory 2 --cpu 2 `
    --restart-policy onfailure
}

