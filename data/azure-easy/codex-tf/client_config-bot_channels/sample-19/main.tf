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
  location = "westus"
}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem subscription
data "azurerm_subscription" "name_2" {}

# data block, azurem tenant
data "azurerm_tenant" "name_3" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, azurem client config
data "azurerm_client_config" "name_20" {}

# data block, az
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_21" {
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"

  microsoft_app_id = "my-bot-channels-registration"
  microsoft_app_password = "my-bot-channels-registration"
}

