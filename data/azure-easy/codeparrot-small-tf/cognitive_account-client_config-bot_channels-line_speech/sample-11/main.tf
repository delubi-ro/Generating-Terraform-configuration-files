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

# create cognitive account resource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_test_cognitive"
  location = "westus2"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create storage account
resource "azurerm_storage_account" "name_3" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "test"
  }
}

# create bot channels registration resource group
resource "azurerm_resource_group" "name_4" {
  name     = "myTFResourceGroup_test_bot_channels"
  location = "westus2"
}

# resource block called bot channel direct line speechresource
resource "azurerm_resource_group" "name_5" {
  name     = "myTFResourceGroup_test_bot_channels_speech"
  location = "westus2"
}

