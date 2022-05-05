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

# a google compute network resource 
resource "google_compute_network" "name_0" {
  name                    = "vpc-network"
  auto_create_subnetworks = "true"
}

