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

# compute network that auto creates subnetworksvariable
resource "google_compute_network" "name_0" {
  name                    = "my-compute-network"
  auto_create_subnetworks = false
}

