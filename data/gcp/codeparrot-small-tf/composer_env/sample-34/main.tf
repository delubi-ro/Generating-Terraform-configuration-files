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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2.0.yaml
# Use the composer-2.0.0-preview.3-airflow-2.1.2.0.yaml to update the terraform.yaml file
# with the latest version of terraform
provider "google-beta" {
  region = "us-central1"
}

