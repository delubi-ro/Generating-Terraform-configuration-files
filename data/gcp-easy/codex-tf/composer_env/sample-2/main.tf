terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = "${file("account.json")}"
  project     = "my-project"
  region      = "us-central1"
}

# create composer environment in region us-central1
resource "google_composer_environment" "name_0" {
  name = "my-composer-env"
  region = "us-central1"
  config {
    node_count = 1
    node_config {
      machine_type = "n1-standard-1"
      disk_size_gb = 30
      network = "default"
      subnetwork = "default"
    }
  }
}

