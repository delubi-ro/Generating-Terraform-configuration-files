# Terraform block with google provider
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  region = "europe-north1"
}

# a google compute network resource 
resource "google_compute_network" "name_0" {
  name = "terraform-network"
}
