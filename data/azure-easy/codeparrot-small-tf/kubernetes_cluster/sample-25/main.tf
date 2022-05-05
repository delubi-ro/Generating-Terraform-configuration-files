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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# kubernetes cluster resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_dev_cluster"
  location = "westus2"
}

