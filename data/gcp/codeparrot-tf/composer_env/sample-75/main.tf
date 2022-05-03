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

  # Create a container image from a source image tag.
  # Note that the source image's family and version are required.
  # Specifying a source image in Google Cloud does not work, so you will need to specify a version.
  # See https://cloud.google.com/compute/docs/images
  source_image = "debian-cloud/debian-9"

  # Define a network interface in the correct subnet.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Define a network interface in the correct subnet.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance.
  # Specify a network interface in the correct subnet.
  instance_name = "my-instance-${random_suffix}"
  # Specify a network interface in the correct subnet.
  network_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface.
  # Specify a network interface in the correct subnet.
  instance_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface.
  # Specify a network interface in the correct subnet.
  instance_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface.
  # Specify a network interface in the correct subnet.
  instance_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface.
  # Specify a network interface in the correct subnet.
  instance_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface.
  # Specify a network interface in the correct subnet.
  instance_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface.
  # Specify a network interface in the correct subnet.
  instance_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a VM instance with a network interface.
  # Specify a network interface in the correct subnet.
  instance_interface {
    subnetwork = google_compute_subnetwork.subnet-2.id
    access_config {
      # add external ip
}

