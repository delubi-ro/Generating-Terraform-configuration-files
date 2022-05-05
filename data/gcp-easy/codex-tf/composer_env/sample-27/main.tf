terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name         = "composer-env"
  project      = var.project
  region       = var.region
  config {
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 10
      location     = var.region
    }
    software_config {
      image_version = "composer-1.10.2-airflow-1.10.2"
    }
  }
}

