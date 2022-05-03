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

# compute network that auto creates subnetworks
resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
}

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-${local.name_suffix}"
  machine_type = "f1-micro"
  zone = "europe-west1-b"
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}

