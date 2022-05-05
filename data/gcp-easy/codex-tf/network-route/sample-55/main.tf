terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# a compute network resource
resource "google_compute_network" "name_0" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}

# compute route resource
resource "google_compute_route" "name_1" {
  name           = "terraform-route"
  network        = google_compute_network.name_0.self_link
  next_hop_gateway = "default-internet-gateway"
  destination_range = "0.0.0.0/0"
}

