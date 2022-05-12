terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# create compute network, give it a name and auto create subnetworksresource
resource "google_compute_network" "name_0" {
  name = "my-network"
  auto_create_subnetworks = false
}

