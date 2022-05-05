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
  project     = "my-project"
  region      = "us-central1"
}

# compute network resource
resource "google_compute_network" "name_0" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = "true"
}

# a compute instance 
resource "google_compute_instance" "name_1" {
  name         = "my-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.name_0.self_link
  }
}

