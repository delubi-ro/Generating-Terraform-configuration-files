terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name = "composer-env-1"
  region = "us-central1"
  config {
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 10
      service_account = "composer-service-account@my-project.iam.gserviceaccount.com"
    }
    software_config {
      image_version = "composer-2.0.0-preview.3-airflow-2.1.2"
    }
  }
}

