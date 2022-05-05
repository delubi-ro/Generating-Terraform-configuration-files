terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-terraform"
  location = "westeurope"
}

# create public ip resource
resource "azurerm_public_ip" "name_1" {
  name                = "public_ip"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  allocation_method   = "Static"
}

# make a lb resource
resource "azurerm_lb" "name_2" {
  name                = "lb-terraform"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name

  frontend_ip_configuration {
    name                 = "publicIPAddress"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

