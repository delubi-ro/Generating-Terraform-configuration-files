terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# compute network resource 
resource "google_compute_network" "name_0" {
  name = "my-compute-network"
}

# a compute instanceresource 
resource "google_compute_instance" "name_1" {
  name = "my-compute-instance"
  machine_type = "f1-micro"
  zone = "us-central1-f"

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

