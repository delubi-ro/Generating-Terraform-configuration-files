terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azurerm
provider "azurerm" {
  features {}
}

# create resource groupresource
resource "azurerm_resource_group_resource" "name_0" {
  name     = "myTFResourceGroupResource"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = "Standard_Akamai"
}

# a virtual network resource group
resource "azurerm_virtual_network" "name_1" {
  name                = "myTFVNet"
  location            = "westus2"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.rg.name
}

# create subnet resourcevariable
resource "azurerm_subnet" "name_2" {
  name                 = "myTFSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

