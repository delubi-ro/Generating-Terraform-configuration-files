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
  project  = google_project.project.project_id

  composer_env {
    image = "debian-cloud/debian-9"
    type  = "NATIVE"
  }

  # Add a network interface to the instance
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.self_link
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

 
}

