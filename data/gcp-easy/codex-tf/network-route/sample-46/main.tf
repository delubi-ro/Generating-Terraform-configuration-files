terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/service_account.json")
  project     = "my-project"
  region      = "us-central1"
}

# a compute network resource
resource "google_compute_network" "name_0" {
  name                    = "my-network"
  auto_create_subnetworks = "true"
}

# compute route resource
resource "google_compute_route" "name_1" {
  name            = "my-route"
  network         = google_compute_network.name_0.self_link
  next_hop_gateway = "default-internet-gateway"
  next_hop_ip      = "8.8.8.8"
  priority        = 1000
  destination_range = "0.0.0.0/0"
}

