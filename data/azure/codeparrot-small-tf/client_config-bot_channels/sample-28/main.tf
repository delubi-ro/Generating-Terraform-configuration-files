terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with features block
provider "azurerm" {
  features {}
}

# create resource group, use name example-resources and set location to West Europe
resource "azurerm_resource_group" "name_2" {
  name     = "example-resources"
  location = "westus2"
}

# data block, azurem client configresource, azurerm storage account, storage container, storage container group
data "azurerm_client_configresource" "name_1" {
  name = "example-resources"
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_resource_group" "name_2" {
  name     = "example-channel-registration"
  location = "westus2"
  resource_group_name = azurerm_resource_group.name_2.name
}

