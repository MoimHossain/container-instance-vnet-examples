az container create --name appcontainer --resource-group ACI-Networking --image mcr.microsoft.com/azuredocs/aci-helloworld --vnet aci-vnet --vnet-address-prefix 10.0.0.0/16 --subnet aci-subnet --subnet-address-prefix 10.0.0.0/24
az container show --resource-group ACI-Networking --name appcontainer --query ipAddress.ip --output tsv
az acr create --resource-group ACI-Networking --name moimhaxreg2024 --sku Basic
az acr login --name moimhaxreg2024
docker pull mcr.microsoft.com/hello-world
docker tag mcr.microsoft.com/hello-world moimhaxreg2024.azurecr.io/hello-world:v1
docker push moimhaxreg2024.azurecr.io/hello-world:v1
az acr repository list --name moimhaxreg2024 --output table


az container create --name starshipx239-containergroup --resource-group ACI-Networking --file example.yaml


## Create a premium container registry
az acr login --name moimharegx23
docker tag mcr.microsoft.com/hello-world moimharegx23.azurecr.io/hello-world:v1
docker push moimharegx23.azurecr.io/hello-world:v1
az acr repository list --name moimharegx23 --output table


az container create --name krakowmoimha --resource-group ACI-Networking --file example.yaml