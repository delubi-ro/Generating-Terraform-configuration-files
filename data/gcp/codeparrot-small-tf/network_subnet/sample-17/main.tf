terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# create compute network, give it a name and auto create subnetworksvariable
resource "google_compute_network" "name_0" {
  name = "my-network"
}

