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

# bigquery dataset resource
resource "google_bigquery_dataset" "name_0" {
  dataset_id                  = "my-dataset-${random_suffix}"
  location                    = "US"
  default_table_expiration_ms = 3600000

  labels = {
    my_label = "my_value"
  }
}

