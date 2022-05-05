terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# a compute network resource
resource "google_compute_network" "name_0" {
  name                    = "vpc-network"
  auto_create_subnetworks = "true"
}

# compute route resource
resource "google_compute_route" "name_1" {
  name           = "vpc-route"
  network        = google_compute_network.name_0.self_link
  next_hop_ip    = "10.128.0.1"
  next_hop_gateway = "default-internet-gateway"
  destination_range = "10.128.0.0/16"
}

