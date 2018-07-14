# azure-container-instances
Find some Azure Container Instances examples using Azure CLI 2.0 in this repository

## Before start
* Install Azure CLI: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest
* Open a Powershell console and write the following command
```
az login
```
* Insert your Azure credentials
* In case of having multiple Azure subscriptions, get the list of subscriptions you have and select the one you want to use
```
az account list --output table
az account set -s "My Subscription"
```
* Finally, optionally create a resource group to host your resources and easily clean up after your work.
```
$resourceGroup = "MyResourceGroup"
$location = "westeurope"
az group create -n $resourceGroup -l $location
```
