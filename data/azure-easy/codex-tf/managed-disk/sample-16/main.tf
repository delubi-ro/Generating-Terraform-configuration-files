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
  name     = "my-resource-group"
  location = "West US"
}

# make managed disk resource
resource "azurerm_managed_disk" "name_1" {
  name                 = "my-managed-disk"
  location             = azurerm_resource_group.name_0.location
  resource_group_name  = azurerm_resource_group.name_0.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1"
}

