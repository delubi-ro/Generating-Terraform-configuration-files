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

# create resource groupresource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# make managed disk resource
resource "azurerm_managed_disk" "name_1" {
  name                 = "myTFDisk"
  location             = "westus2"
  resource_group_name  = azurerm_resource_group.rg.name
  storage_account_type = "Standard_LRS"
}

