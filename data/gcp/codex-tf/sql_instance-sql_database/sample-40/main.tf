terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# resource block, sql database instance. Set database version to MYSQL_5_7 and use setting tier db-f1-micro. Also, enable deletion protection
resource "google_sql_database_instance" "name_0" {
  name = "sql-instance-1"
  database_version = "MYSQL_5_7"
  settings {
    tier = "db-f1-micro"
    deletion_protection = true
  }
}

# create a sql database. Use the sql database instance name defined in the previous block
resource "google_sql_database" "name_1" {
  name = "sql-database-1"
  instance = google_sql_database_instance.name_0.name
}

