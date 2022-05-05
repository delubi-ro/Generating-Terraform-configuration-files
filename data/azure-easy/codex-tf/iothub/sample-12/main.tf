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
  name     = "myResourceGroup"
  location = "westus"
}

# iothub resource block
resource "azurerm_iothub" "name_1" {
  name                = "myiothub"
  resource_group_name = azurerm_resource_group.name_0.name
  location            = azurerm_resource_group.name_0.location
  sku                 = "S1"
  event_hub_partitions = 4
  event_hub_retention_time_in_days = 7
  event_hub_endpoints {
    name = "events"
    partition_count = 4
    retention_time_in_days = 7
  }
}

