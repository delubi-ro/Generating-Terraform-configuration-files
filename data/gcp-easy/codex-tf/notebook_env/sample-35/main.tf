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

# create google notebooks enviroment
resource "google_notebooks_environment" "name_0" {
  name = "my-notebook-env"
}

