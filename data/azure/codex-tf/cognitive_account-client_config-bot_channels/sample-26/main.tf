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
  name     = "example-resources"
  location = "West Europe"
}

# create cognitive account resource. Of kind SpeechServices and sku name S0. Use name and location from resource group
resource "azurerm_cognitive_account" "name_1" {
  name                = "example-cognitive-account"
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "SpeechServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create cognitive speech resource. Use name and location from cognitive account. Use subscription id from client config.
resource "azurerm_cognitive_speech_resource" "name_3" {
  name                = azurerm_cognitive_account.name_1.name
  location            = azurerm_cognitive_account.name_1.location
  resource_group_name = azurerm_resource_group.name_0.name
  subscription_id     = data.azurerm_client_config.name_2.subscription_id
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_channels_registration" "name_4" {
  location            = "global"
  sku                 = "F0"
  microsoft_app_id    = data.azurerm_client_config.name_2.object_id
  name                = "example-bot-channels-registration"
  resource_group_name = azurerm_resource_group.name_0.name
}

