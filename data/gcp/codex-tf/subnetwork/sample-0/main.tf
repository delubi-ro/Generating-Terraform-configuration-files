terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create compute network with a name surf
resource "google_compute_network" "name_0" {
  name = "surf"
}

# create compute subnetwork. Use ip cidr range 10.0.0.0/16 and use previous compute network called surf
resource "google_compute_subnetwork" "name_1" {
  name = "surf"
  ip_cidr_range = "10.0.0.0/16"
  region = "europe-north1"
  network = google_compute_network.name_0.name
}

