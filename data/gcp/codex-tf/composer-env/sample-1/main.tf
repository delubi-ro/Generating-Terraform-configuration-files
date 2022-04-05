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

# create environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name               = "composer-test-%s"
  region             = "us-central1"
  config_bucket      = google_storage_bucket.composer.name
  image_version      = "composer-2.0.0-preview.3-airflow-2.1.2"
  node_count         = 1
  service_account    = google_service_account.test.email
  software_config    = google_composer_software_config.test.name
}

