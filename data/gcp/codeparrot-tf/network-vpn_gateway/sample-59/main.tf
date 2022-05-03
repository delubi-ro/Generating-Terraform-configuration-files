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

# create compute network with global routing mode and set auto create subnetworks to false
resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network idvariable as the internal routing table
resource "google_compute_ha_vpn_gateway" "name_1" {
  name    = "ha-vpn-${local.name_suffix}"
  network = google_compute_network.name_0.id
  region  = "us-central1"
  vpn_gateway_interface = "gke-vpn-1"
  # remote_gateway_interface = "gke-vpn-2"
}

