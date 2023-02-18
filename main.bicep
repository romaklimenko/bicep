targetScope = 'subscription'

param resourceGroupName string
param date string = utcNow()

param location string = deployment().location
param containerRegistryName string

module rg 'rg.bicep' = {
  name: 'resourceGroupDeployment-${date}'
  params: {
    resourceGroupName: resourceGroupName
    location: location
    containerRegistryName: containerRegistryName
  }
}
