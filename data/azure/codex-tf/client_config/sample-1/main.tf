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
resource "azurerm_resource_group" "name_0" {
  name     = "example-resources"
  location = "West Europe"
}

# data block, azurem client config
data "azurerm_client_config" "name_1" {}

# create a virtual network with name example-vnet and set location to West Europe
resource "azurerm_virtual_network" "name_2" {
  name                = "example-vnet"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  address_space = ["10.0.0.0/16"]
}

