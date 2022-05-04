terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-west1"
}

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-2"
  machine_type = "e2-medium"
  zone = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "deeplearning-platform-release/deeplearning-platform-release-1"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

