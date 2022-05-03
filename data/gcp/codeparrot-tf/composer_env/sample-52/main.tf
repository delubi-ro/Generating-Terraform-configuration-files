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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2 (Ubuntu Server 16.04 LTS, SDD Volume Type)
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = google_project.project.project_id

  config {
    node_config {
      machine_type = "e2-micro"

      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to allow SSH access only from the instance
  network_interface {
    network = "default"
  }

  # Add a default SSH key file to the instance
  ssh_key {
    key_data = "${file("~/.ssh/google_compute_engine")}"
  }

  # Create a container
  container_config {
    image = "debian-cloud/debian-9"
  }

  # Start the instance
  # Startupflags can be:
  # Startupflags:
  # Startupflags:
  # Startupflags:
  # Startupflags:
  # Startupflags:

  # StopMode: Stop the instance
  # StopMode: Stop the instance
  # StopMode: Stop the instance

  # Shutdown:
  # Shutdown:
  # Shutdown:
  # Shutdown:

  # Output "instance_name" {
  #   value = "${google_compute_instance.vm_instance.name}"
  # }
}

