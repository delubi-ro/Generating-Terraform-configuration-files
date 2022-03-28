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

# create compute network with a name surf
resource "google_compute_network" "name_1" {
  name = "my-network"
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
resource "google_compute_subnetwork" "name_1" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.0.0/16"
  network       = google_compute_network.name_1.id
}

# resource compute address, use subnetwork id. Set address type to internal, use address 10.0.42.42
resource "google_compute_address" "name_2" {
  name         = "my-internal-address"
  subnetwork   = google_compute_subnetwork.name_1.id
  address_type = "INTERNAL"
  address      = "10.0.42.42"
}