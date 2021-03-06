# azure-container-instances
Find some Azure Container Instances examples using Azure CLI 2.0 in this repository

## Before start
* Install Azure CLI: https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest
* Open a shell (bash, Powershell, ...) and write the following command
```
az login
```
* Insert your Azure credentials
* In case of having multiple Azure subscriptions, get the list of subscriptions you have and select the one you want to use
```
az account list --output table
az account set -s "My Subscription"
```
## Examples
* container groups:
  * Create a container group getting a Ghost image from Docker Hub (https://hub.docker.com/_/ghost/). Ghost is a free and open source blogging platform written in JavaScript. Executing this example, you will have a fully Ghost blogging platform ready to be used. 
  * It also offers the possibility of publishing another blogging platform image. This time running in Windows platform.
