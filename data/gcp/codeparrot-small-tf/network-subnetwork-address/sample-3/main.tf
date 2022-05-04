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

# create compute network with a name surf
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surfresource
resource "google_compute_subnetwork" "name_1" {
  name          = "my-compute-subnetwork"
  ip_cidr_range = "10.0.0.0/16"
  region        = "europe_west1"
}

# resource compute address, set subnetwork id. Set address type to internal, use address 10.0.42.42
resource "google_compute_address" "name_2" {
  name = "my-compute-address"
}

