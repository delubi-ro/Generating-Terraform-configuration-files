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

# resource block, sql database instance. Set database version to MYSQL_5_7 and enable deletion protection. Also, use setting tier db-f1-micro
resource "google_sql_database_instance" "name_0" {
  name = "my-db-instance"
  region = "europe-west1"
  database_version = "MYSQL_5_7"
  deletion_protection = false
}

# create a sql database. Use the sql database instance name defined in the previous block
}

