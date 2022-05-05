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

# create a resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}

