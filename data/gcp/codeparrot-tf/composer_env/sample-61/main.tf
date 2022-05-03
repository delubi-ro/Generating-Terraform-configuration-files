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
  name     = "composer-env-${local.name_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
    access_config {
    }
  }

  # Create a new instance to host the instance with.
  instance_template = google_compute_instance_template.vm_instance.id

  # Set tags for the instance
  tags = ["allow-ssh"]

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will be used if this is a new machine type.
  create_before_destroy = true

  # Set create_before_destroy to true, which means instances will be recreated with the default network.
  # The default network will
}

