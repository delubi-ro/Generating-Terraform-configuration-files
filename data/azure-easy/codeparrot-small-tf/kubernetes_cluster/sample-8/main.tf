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

# create resource groupresource
resource "azurerm_resource_group_resource" "name_0" {
  name     = "myTFResourceGroupResource"
  location = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  sku_name = "standard"
  location_type = "Standard"
}

# kubernetes cluster resource
resource "azurerm_kubernetes_cluster" "name_1" {
  name                = "myTFKubernetesCluster"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
  kubernetes_version = "1.8.0"
  kubernetes_config {
    kubernetes_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes_config_type = "ClusterIP"
    kubernetes_config_name = "myTFKubernetesClusterConfig"
    kubernetes_config_version = "1.8.0"
    kubernetes
}

