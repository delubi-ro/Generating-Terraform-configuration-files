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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-west4
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${local.name_suffix}"
  machine_type = "europe-west4"
  location = "europe-west4-a"
  machine_image {
    repository = "gcr.io/deeplearning-platform-release/base-cpu"
    tag = "latest"
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}

