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
  name     = "myTFResourceGroup_test"
  location = "westus2"
}

# make managed disk resource group
resource "azurerm_managed_disk" "name_1" {
  name                 = "mydisk"
  location             = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  disk_size_gb         = "1023"
}

