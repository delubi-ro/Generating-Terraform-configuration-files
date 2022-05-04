terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# compute network that auto creates subnetworksresource.example.com
resource "google_compute_network" "name_0" {
  name                    = "compute-network"
  auto_create_subnetworks = false
}

# a compute instance that has machine type f1-micro, debian-9 image, uses self link to vpc network and has a name of network interface
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance-${random_suffix}"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

