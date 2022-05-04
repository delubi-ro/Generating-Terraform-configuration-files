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

# resource block, sql database instance
resource "google_sql_database_instance" "name_0" {
  name = "my-sql-instance-${random_suffix}"
  region = "us-central1"
  database_version = "POSTGRES_9_6"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name = "my-public-ip-${random_suffix}"
        value = "10.100.0.0/24"
      }
    }
  }
}

# create a sql database
}

