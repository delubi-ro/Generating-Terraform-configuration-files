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

# create resource group
resource "azurerm_resource_group" "name_0" {
  name     = "myTFResourceGroup_dev"
  location = "westus2"
}

# make iothub resourceresource group
resource "azurerm_resource_group" "name_1" {
  name     = "myTFResourceGroup_iothub"
  location = "westus2"
}

# iot security solution resourceresource block
resource "azurerm_resource_group" "name_2" {
  name     = "myTFResourceGroup_ssw"
  location = "westus2"
}

