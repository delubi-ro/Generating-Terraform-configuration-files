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

# create resource groupvariable
resource "azurerm_resource_group_variable" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
  value     = "test"
}

# create public ip resource
resource "azurerm_public_ip" "name_1" {
  name                         = "myPublicIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.rg.name
  public_ip_address_allocation = "static"
  domain_name_label            = "mytf"
}

# make a lb resource
resource "azurerm_lb" "name_2" {
  name                = "myTFLB"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard"
  frontend_ip_configuration {
    name                 = "mytf"
    public_ip_address_id = azurerm_public_ip.name_1.id
  }
}

