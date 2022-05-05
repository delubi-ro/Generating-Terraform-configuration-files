terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name = "my-ml-engine-model"
  location = "us-central1"
  description = "a description"
  default_version = "1.0.0"
  project = "ml-engine-project"
  tier = "STANDARD"
  region = "us-central1"
  config {
    tier = "STANDARD"
    version = "1.0.0"
  }
}

