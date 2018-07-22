[CmdletBinding()]
Param(
    $ResourceGroup = "AciPrivateRegistryDemo",
    $Location = "westeurope",
    $ImageServerOrig = "microsoft",
    $Image = "aci-helloworld"
)

az group create --name $ResourceGroup --location $Location

$acrName = "jgouacr"
$loginServer = "$($acrName).azurecr.io"

# Create your own Azure Container Registry 
az acr create -g $ResourceGroup -n $acrName --sku Basic

if ($ImageServerOrig.length -gt 0){
    az acr login --name $loginServer

    docker pull "$($ImageServerOrig)/$($Image)"
    $imageTag = "$loginServer/$Image"

    docker tag "$($ImageServerOrig)/$($Image)" $imageTag
    docker push $imageTag
}

# Be sure that the image has been pushed to your ACR
az acr repository list --name $acrName --output table