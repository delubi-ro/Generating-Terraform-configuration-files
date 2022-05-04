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

# ml engine model resource. With default name and in europe west 4 regions,
# ml engine is used to create the instance and install the service
# and install the service-account.
resource "google_compute_instance" "name_0" {
  name = "ml-instance-%{random_suffix}"
  machine_type = "e2-micro"
  zone = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "ml-cloud/ml-stable"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

