terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = "my-project"
  region      = "us-central1"
}

# ml engine model resource
resource "google_ml_engine_model" "name_0" {
  name     = "my-model"
  project  = "my-project"
  region   = "us-central1"
  labels = {
    "label1" = "value1"
  }
}

