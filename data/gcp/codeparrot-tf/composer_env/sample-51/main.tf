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

  config {
    node_config {
      machine_type = "e2-micro"

      image = "debian-cloud/debian-9"
    }
  }

  # Add a network interface to the instance
  network_interface {
    network = "default"
  }

  # Add a default network interface to the instance
  network_interface {
    network = "default"
  }

  # Create a new instance
  instance_name = "composer-instance-${random_suffix}"

  # Set a custom image for the instance
  image = "debian-cloud/debian-9"

  # Specify a network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set a default network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Create a new instance
  instance_type = "t2.micro"

  # Set a custom image for the instance
  image = "debian-cloud/debian-9"

  # Specify a network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set a default network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Create a new instance
  instance_name = "composer-instance-${random_suffix}"

  # Set a custom image for the instance
  image = "debian-cloud/debian-9"

  # Specify a network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set a default network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Create a new instance
  instance_type = "t2.micro"

  # Set a custom image for the instance
  image = "debian-cloud/debian-9"

  # Specify a network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set a default network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Create a new instance
  instance_name = "composer-instance-${random_suffix}"

  # Set a custom image for the instance
  image = "debian-cloud/debian-9"

  # Specify a network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set a default network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Create a new instance
  instance_type = "t2.micro"

  # Set a custom image for the instance
  image = "debian-cloud/debian-9"

  # Specify a network interface and subnet
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # Set a default
}

