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

# kubernetes cluster. Use dns prefix exampleaks1, create a default node pool with 1 node count and vm size Standard_D2_v2. Make identity SystemAssigned with AzureRM
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "exampleaks1"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.name_0.name

  kubernetes_version = "1.18"

  # use default node pool
  node_pool {
    name            = "Standard_D2_v2"
    vm_size         = "Standard_DS2_v2"
    os_disk_size_gb = "1023"
    os_disk_type    = "Standard_LRS"

    # use default node pool
    node_pool {
      name            = "Standard_DS3_v2"
      vm_size         = "Standard_DS3_v2"
      os_disk_size_gb = "1023"
      os_disk_type    = "Standard_LRS"

      # use default node pool
      node_pool {
        name            = "Standard_DS4_v2"
        vm_size         = "Standard_DS4_v2"
        os_disk_size_gb = "1023"
        os_disk_type    = "Standard_LRS"

        # use default node pool
        node_pool {
          name            = "Standard_DS5_v2"
          vm_size         = "Standard_DS5_v2"
          os_disk_size_gb = "1023"
          os_disk_type    = "Standard_LRS"
        }
      }
    }
  }
}

