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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "example"
  location = "West Europe"
}

# iothub with sku name S1 and capacity 1. Use resource group name and location
resource "azurerm_iothub" "name_1" {
  name                = "example"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku_name            = "S1"
  sku_capacity        = 1
}

