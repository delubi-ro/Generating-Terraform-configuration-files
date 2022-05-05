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
resource "azurerm_resource_group" "name_0" {
  name     = "example-resource-group"
  location = "westus2"
}

# data block, azurem client config, terraform block with azure provider
data "azurerm_client_config" "name_1" {}

# create storage account, use name example-storage-account and set location to West US
resource "azurerm_storage_account" "name_2" {
  name                     = "example-storage-account"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

