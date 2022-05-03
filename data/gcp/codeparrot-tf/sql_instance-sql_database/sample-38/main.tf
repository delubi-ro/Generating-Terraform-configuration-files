terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
}

# resource block, sql database instance. Set database version to MYSQL_5_7 and use setting tier db-f1-micro. Also, enable deletion protection
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-database-instance"
  database_version = "MYSQL_5_7"
  region = "europe-west1"

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name = "my-network-name"
        value = "my-network-address"
      }
    }
  }
}

# create a sql database. Use the sql database instance name defined in the previous blockvariable
resource "google_sql_database" "name_1" {
  name = "my-sql-database"
  instance = google_sql_database_instance.name_0.name
  charset = "utf8mb4"
}

