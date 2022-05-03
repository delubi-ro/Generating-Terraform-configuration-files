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

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTP access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[0].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[1].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[2].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[3].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[4].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[5].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[6].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[7].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[8].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.secondary_ip_range[9].range_name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access only from the host
 
}

