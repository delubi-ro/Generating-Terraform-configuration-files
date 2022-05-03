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
  name     = "composer-env-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id
  version = "~> 10.0"

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance to host the cluster
  instance_template = google_compute_instance_template.vm_instance.id

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance to host the cluster
  instance_group_urls = [
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/subnetworks/${var.subnetwork}",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/add-cluster-firewall",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/remove-default-nodes",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/add-cluster-firewall",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/remove-default-nodes",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/add-cluster-firewall",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/add-cluster-firewall",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/remove-default-nodes",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/regions/${var.region}/instances/${var.instance_group}/add-cluster-firewall",
    "https://www.googleapis.com/compute/v1/projects/${var.project_id}/
}

