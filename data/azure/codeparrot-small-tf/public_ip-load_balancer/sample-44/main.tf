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

# create resource group, use name example in location West Europe
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

# create public ip resource, use static allocation method. Assign resource group name and location
# azurerm_public_ip.name_1 resource block
resource "azurerm_public_ip" "name_1" {
  name                         = "pubIP"
  location                     = "westus2"
  resource_group_name          = azurerm_resource_group.name_0.name
  public_ip_address_allocation = "static"
}

# lb resource. In frontend ip configuration block, asssign name and public ip address id. Use resource group name and location
# azurerm_lb.name_2 resource block
resource "azurerm_lb" "name_2" {
  name                = "lb"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  sku                 = "Standard"
  frontend_ip_configuration_name = "PublicIPAddress"
}

