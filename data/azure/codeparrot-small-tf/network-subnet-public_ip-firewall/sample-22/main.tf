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
  location = "westus2"
}

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group nameresource
resource "azurerm_virtual_network" "name_3" {
  name                = "examplevnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group namevariable
resource "azurerm_subnet" "name_2" {
  name                 = "subnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_3.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and locationresource
# resource "azurerm_public_ip" "publicip" {
#   name                         = "publicip"
#   location                     = "westus2"
#   resource_group_name          = azurerm_resource_group.name_0.name
#   public_ip_address_allocation = "static"
# }

# create virtual network in address space 10.0.0.0/16
resource "azurerm_virtual_network" "name_3" {
  name                = "examplevnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
}

