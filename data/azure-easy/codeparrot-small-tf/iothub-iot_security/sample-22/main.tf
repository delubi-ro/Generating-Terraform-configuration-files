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
  name     = "myTFResourceGroup"
  location = "westus2"
}

# make iothub resource
resource "azurerm_storage_account" "name_1" {
  name                     = "iothub"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# iot security solution resourceresource block
resource "azurerm_storage_share" "name_2" {
  name                 = "iothub_ssg"
  storage_account_name = azurerm_storage_account.name_1.name
  quota                = 10
}

