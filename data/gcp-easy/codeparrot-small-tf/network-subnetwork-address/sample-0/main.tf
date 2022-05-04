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
  name = "my-compute-network-${random_suffix}"
}

# create compute subnetwork 
resource "google_compute_subnetwork" "name_1" {
  name          = "my-compute-subnetwork-${random_suffix}"
  ip_cidr_range = "10.127.0.0/20"
}

# make a compute address resource
resource "google_compute_address" "name_2" {
  name = "my-compute-address-${random_suffix}"
}

