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
  name     = "my-rg"
  location = "westus"
}

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cog-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "S0"
  kind                = "TextAnalytics"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive account key
resource "azurerm_cognitive_account_key" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  resource_group_name = azurerm_resource_group.name_0.name
  key_name            = "key1"
}

# create bot channels registration resource
resource "azurerm_bot_channels_registration" "name_4" {
  name                = "my-bot"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku_name            = "F0"
  microsoft_app_id    = "my-app-id"
  microsoft_app_password = "my-app-password"
}

# resource block called bot channel direct line speech
resource "azurerm_bot_channel_direct_line_speech" "name_5" {
  name                = "my-bot-channel"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  bot_name            = azurerm_bot_channels_registration.name_4.name
  cognitive_models    = [
    {
      name = "general"
    },
  ]
  speech_subscription_key = data.azurerm_client_config.name_2.client_id
  speech_region           = "westus"
  speech_context          = [
    {
      name = "general"
    },
  ]
  speech_endpoint_id = "my-endpoint-id"
  speech_authorization_token = "my-authorization-token"
}

