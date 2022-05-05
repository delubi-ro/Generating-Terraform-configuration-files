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

# ml engine model resource. With default name and in europe west 4 regions
resource "google_ml_engine_model" "name_0" {
  name = "test_model"
  region = "europe-west4"
}

