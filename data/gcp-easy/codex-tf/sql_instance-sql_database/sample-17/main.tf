terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${var.credentials_file}")
  project     = "${var.project}"
  region      = "${var.region}"
}

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name              = "terraform-test-instance"
  database_version  = "POSTGRES_11"
  region            = "${var.region}"
  settings {
    tier = "db-f1-micro"
  }
}

# create a sql database
resource "google_sql_database" "name_1" {
  name     = "terraform_test_db"
  instance = "${google_sql_database_instance.name_0.name}"
}

