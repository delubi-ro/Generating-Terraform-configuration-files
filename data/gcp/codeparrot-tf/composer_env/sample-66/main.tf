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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id
  version = "~> 10.0"

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTP access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-2.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-3.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTP access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-4.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-5.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-6.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-7.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-8.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-9.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-10.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-11.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-compute-subnet-12.name
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow HTTPS access from the host
  network_interface {
    subnetwork = google_compute
}

