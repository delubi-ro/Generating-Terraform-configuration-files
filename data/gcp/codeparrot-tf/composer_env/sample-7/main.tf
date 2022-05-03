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

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.second_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.third_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.fourth_network_interface.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add
}

