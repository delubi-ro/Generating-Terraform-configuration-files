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
  name                = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  resource_group_name = azurerm_resource_group.name_0.name
  kind                = "SpeechServices"
  sku_name            = "S0"
}

# data block, azurem client config
data "azurerm_client_config" "name_2" {}

# create speech resource. Use name and location from resource group. Use subscription id from client config. Use resource group name from resource group. Use cognitive account name from cognitive account.
resource "azurerm_speech_resource" "name_3" {
  name                = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  subscription_id     = data.azurerm_client_config.name_2.subscription_id
  resource_group_name = azurerm_resource_group.name_0.name
  cognitive_account_name = azurerm_cognitive_account.name_1.name
}

# create bot channels registration resource. Set location global, sku to F0, microsoft app id from client config id. Assign name and use resource group name
resource "azurerm_bot_channels_registration" "name_4" {
  location            = "global"
  sku                 = "F0"
  microsoft_app_id    = data.azurerm_client_config.name_2.object_id
  name                = azurerm_resource_group.name_0.name
  resource_group_name = azurerm_resource_group.name_0.name
}

