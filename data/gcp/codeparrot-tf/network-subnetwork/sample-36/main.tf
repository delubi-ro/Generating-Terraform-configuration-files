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

# create compute network with name surf_c
resource "google_compute_network" "name_0" {
  name = "my-compute-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use compute network surf id
resource "google_compute_subnetwork" "name_1" {
  name = "my-compute-subnet-${random_suffix}"
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.name_0.id
}

