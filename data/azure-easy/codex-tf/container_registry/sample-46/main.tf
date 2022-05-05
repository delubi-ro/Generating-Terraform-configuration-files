terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

# Provider block with azure
provider "azurerm" {
  version = "~> 2.0"
  features {}
}

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "rg-terraform-demo"
  location = "eastus"
}

# create container registry resource
resource "azurerm_container_registry" "name_1" {
  name                = "acr-terraform-demo"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "Basic"
  admin_enabled       = true
}

