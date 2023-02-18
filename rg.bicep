targetScope = 'subscription'

param resourceGroupName string
param location string
param containerRegistryName string

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: location
}

module acr 'acr.bicep' = {
  name: 'containerRegistryDeployment'
  scope: rg
  params: {
    name: containerRegistryName
    location: rg.location
  }
}
