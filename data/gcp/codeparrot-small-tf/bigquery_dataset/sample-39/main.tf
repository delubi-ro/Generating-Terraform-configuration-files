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

# bigquery dataset resource. Use dataset id example_dataset, use location "EU" and set to expire after 1 hour. The reader role is assigned to hashicorp.com domain.
resource "google_bigquery_dataset" "name_0" {
  dataset_id = "my_dataset"
  location = "EU"
  description = "Terraform dataset"
}

