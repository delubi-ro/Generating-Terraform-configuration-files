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

# create resource groupresource
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_rg"
  location = "westus2"
  tags     = {
    env = "dev"
  }
}

# data block, azurem client configresource
data "azurerm_client_config" "name_1" {}

# create storage account
resource "azurerm_storage_account" "name_2" {
  name                     = "mytfstorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

# create bot channels registration resource
resource "azurerm_registration" "name_3" {
  name                = "mytfregistration"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "westus2"
  account_tier        = "Standard"
  account_replication_type = "GRS"
  webhook_url          = "https://github.com/webhook-service-account/webhook"

  # create webhook
  webhook_configuration {
    webhook_url = "https://github.com/webhook-service-account/webhook"

    # create webhook endpoint
    webhook_endpoint = "https://github.com/webhook-service-account/webhook"
  }
}

