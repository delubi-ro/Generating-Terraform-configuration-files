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

# make iothub resource
resource "azurerm_iothub" "name_1" {
  name                = "my-iothub"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "F1"
}

# iot security solution resource
resource "azurerm_iothub_security_solution" "name_2" {
  iothub_name                = azurerm_iothub.name_1.name
  resource_group_name        = azurerm_resource_group.name_0.name
  location                   = azurerm_resource_group.name_0.location
  solution_name              = "my-solution"
  solution_type              = "AzureSecurityCenterforIoT"
  pricing_tier               = "Free"
  workspace_resource_id      = "my-workspace-id"
  workspace_subscription_id  = "my-workspace-subscription-id"
}

