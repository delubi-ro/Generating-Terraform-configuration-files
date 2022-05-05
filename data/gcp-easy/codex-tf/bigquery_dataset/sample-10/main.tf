terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  project = "my-project"
  region  = "us-central1"
}

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id = "my_dataset"
}

