terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create compute network 
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# create a compute ha vpn gatewayresource 
resource "google_compute_ha_vpn_gateway" "name_1" {
  name    = "my-ha-vpn-gateway"
  network = google_compute_network.name_0.self_link
}

