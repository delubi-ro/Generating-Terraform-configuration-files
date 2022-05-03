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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${local.name_suffix}"
  location = "europe-west4-a"
  machine_type = "e2-medium"
  can_ip_forward = false
  can_ip_reverse = false
  labels = {
    "test" = "test"
  }
  metadata = {
    "enable-oslogin" = "TRUE"
  }
  service_account_create = true
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}

