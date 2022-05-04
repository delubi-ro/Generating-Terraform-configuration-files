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
  default_version = "latest"
  labels = {
    my_ml_model = "my-ml-model"
  }
}

