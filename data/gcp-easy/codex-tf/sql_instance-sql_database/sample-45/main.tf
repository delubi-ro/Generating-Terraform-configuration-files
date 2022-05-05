terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("account.json")
  project     = "my-project"
  region      = "us-central1"
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name     = "my-db"
  database = "my-db"
  region   = "us-central1"
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = "my-db"
  instance = google_sql_database_instance.name_0.name
}

