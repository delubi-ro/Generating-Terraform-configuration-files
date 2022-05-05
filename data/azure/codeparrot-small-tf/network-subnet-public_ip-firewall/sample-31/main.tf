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

# a virtual network resource in address space 10.0.0.0/16. Use location and resource group name
resource "azurerm_virtual_network" "name_1" {
  name                = "examplevnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
}

# create subnet resource, with address prefix 10.0.1.0/24. Use virtual network name and the resource group name
resource "azurerm_subnet" "name_2" {
  name                 = "subnet"
  resource_group_name  = azurerm_resource_group.name_0.name
  virtual_network_name = azurerm_virtual_network.name_1.name
  address_prefix       = "10.0.1.0/24"
}

# resource block of public ip. Use allocation method static and sku standard. Use resource group name and location
# azurerm_public_ip.pub ip address
# azurerm_network_interface.name_4
# azurerm_storage_account.name_3
# azurerm_storage_container.stor
# azurerm_virtual_machine.vm
# azurerm_virtual_machine.vm
# azurerm_public_ip.pub ip address
# azurerm_storage_container.stor
# azurerm_network_interface.name_4
# azurerm_storage_container.vm
# azurerm_public_ip.pub ip address
# azurerm_storage_container.stor
# azurerm_network_interface.name_4
# azurerm_storage_container.vm

# Create a storage account in Azure Blob Storage
resource "azurerm_storage_account" "name_3" {
  name                     = "storageaccount"
  resource_group_name      = azurerm_resource_group.name_0.name
  location                 = "westus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# resource block with firewall. Create ip configuration block, assign subnet id and public ip id. Assign resource group location and name. Set sku tier to Standard and sku name to AZFW_Hub
resource "azurerm_network_interface" "name_4" {
  name                = "nic"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name
  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.name_2.id
    public_ip_id                     = azurerm_public_ip.pub.id
    sku                           = "Standard"
    tier                           = "Standard"
  }
}

