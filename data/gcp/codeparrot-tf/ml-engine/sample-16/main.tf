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

# ml engine model resource. With default name and in europe west 4 regions
# the default network interface is in the default subnet
resource "google_compute_network" "name_0" {
  name = "my-custom-network"
  auto_create_subnetworks = "false"
  routing_mode = "GLOBAL"
  project = google_project.project.project_id
}

