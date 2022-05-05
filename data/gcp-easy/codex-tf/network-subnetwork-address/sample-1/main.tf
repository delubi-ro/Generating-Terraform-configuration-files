terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# create compute network
resource "google_compute_network" "name_0" {
  name                    = "${var.network_name}"
  auto_create_subnetworks = "true"
}

# create compute subnetwork
resource "google_compute_subnetwork" "name_1" {
  name          = "${var.subnetwork_name}"
  ip_cidr_range = "${var.subnetwork_cidr}"
  network       = "${google_compute_network.name_0.self_link}"
  region        = "${var.region}"
}

# make a compute address resource
resource "google_compute_address" "name_2" {
  name = "${var.address_name}"
}

