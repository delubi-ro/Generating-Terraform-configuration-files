terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/service-account.json")
  project     = var.project
  region      = var.region
}

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "my-notebook-env"
  project = var.project
  region = var.region
  config {
    image_version = "1.0.0-deb9"
    machine_type = "n1-standard-2"
    accelerator_config {
      count = 1
      type = "NVIDIA_TESLA_T4"
    }
    disk_size_gb = 100
    python_version = "3.7"
    container_image = "gcr.io/deeplearning-platform-release/tf2-cpu"
  }
}

