terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe"
}

# create a notebook instance in location us west 1 a. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name = "my-vm"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "deeplearning-platform-release/deeplearning-platform-release-20170214"
    }
  }

  network_interface {
    network = "default"    
  }
}

