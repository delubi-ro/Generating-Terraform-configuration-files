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
resource "azurerm_resource_group" "name_1" {
  name     = "example-resource-group"
  location = "westus2"
}

# create container registry resource. Assign resource group name and location. Set sku to premium and admin enabled to false. Inside a georeplications block, set location to East US and enable zone reduncancy and enable network interfaces.
resource "azurerm_resource_group" "name_1" {
  name     = "example-resource-group"
  location = "westus2"
  sku     = "Standard"
}

