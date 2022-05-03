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

  # Create a container image for the composer environment
  image = "gcr.io/${var.composer_environment.id}/google-containers/ubuntu-os-cloud/debian-9"

  # Create a container image for the composer environment
  container_image = "gcr.io/${var.composer_environment.id}/google-containers/ubuntu-os-cloud/debian-9:1"

  # Create a container image for the composer environment
  container_port = "30000"

  # Create a network interface in the custom service account
  network_interface {
    subnetwork = google_compute_subnetwork.my-custom-subnet.name
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom-network.name
    access_config {
      // Ephemeral IP
    }
  }

  # Create a network interface with a custom image
  network_interface {
    network = google_compute_network.my-custom
}

