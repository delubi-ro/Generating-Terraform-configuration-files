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

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    access_config {
    }
  }

  # Add a default network interface to allow the instance to communicate with the default network
}

