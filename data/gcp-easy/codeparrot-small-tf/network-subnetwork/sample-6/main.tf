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

# create compute subnetworkvariable
resource "google_compute_subnetwork" "name_1" {
  name          = "my-compute-subnetwork"
  ip_cidr_range = "10.128.0.0/20"
  network       = google_compute_network.name_0.id
}

