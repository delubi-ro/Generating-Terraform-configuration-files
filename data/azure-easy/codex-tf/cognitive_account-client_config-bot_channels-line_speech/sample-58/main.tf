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
      locale = "en-us"
      model_id = "builtin.number"
    },
    {
      locale = "en-us"
      model_id = "builtin.ordinal"
    },
    {
      locale = "en-us"
      model_id = "builtin.percentage"
    },
    {
      locale = "en-us"
      model_id = "builtin.currency"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.date"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.time"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetime"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.daterange"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.timerange"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.datetimerange"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.duration"
    },
    {
      locale = "en-us"
      model_id = "builtin.datetimeV2.set"
    },
    {
      locale = "en-us"
      model_id = "builtin.geographyV2.city"
    },
    {
      locale =
}

