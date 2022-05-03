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

  # Add a default network interface to allow SSH access only from the host
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-2.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-3.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-4.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-5.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-6.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-7.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-8.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-9.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-10.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-11.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-12.name

    access_config {
      // Ephemeral IP
    }
  }

  # Add a default network interface to allow SSH access from the VM
  network_interface {
    subnetwork = google_compute_subnetwork.my-subnet-13.name

    access_config {
      //
}

