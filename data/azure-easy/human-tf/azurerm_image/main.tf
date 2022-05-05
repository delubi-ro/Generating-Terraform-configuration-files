# Terraform block with azure provider
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
  name     = "example-resources"
  location = "West Europe"
}

# resource block. Create azurerm image 
resource "azurerm_image" "name_1" {
  name                = "acctest"
  location            = "West US"
  resource_group_name = azurerm_resource_group.name_0.name

  os_disk {
    os_type  = "Linux"
    os_state = "Generalized"
    #blob_uri = "{blob_uri}"
    size_gb  = 30
  }
}