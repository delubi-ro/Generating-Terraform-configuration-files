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

# create cognitive account resource
resource "azurerm_cognitive_account" "name_1" {
  name                = "my-cognitive-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "TextAnalytics"
  sku_name            = "S0"
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
  name                = "my-bot-channels-registration"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "F0"
  kind                = "sdk"
  microsoft_app_id    = data.azurerm_client_config.name_2.client_id
  microsoft_app_password = data.azurerm_client_config.name_2.client_secret
  endpoint            = "https://my-bot-channels-registration.azurewebsites.net/api/messages"
  cognitive_models {
    model_id = "builtin.intent.alarm.set"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.alarm.delete"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.alarm.check"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.alarm.check_all"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.calendar.add"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.calendar.check"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.calendar.check_availability"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.calendar.delete"
    version  = "0.1"
  }
  cognitive_models {
    model_id = "builtin.intent.calendar.find_meeting_time"
    version  = "0.1"
  }
  cognitive_models {
    model_
}

