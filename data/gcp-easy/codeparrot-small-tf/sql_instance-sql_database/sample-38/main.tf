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
  database_version = "POSTGRES_12"
  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled = true
      private_network = "projects/${var.project_id}/global/networks/default"
      authorized_networks = [
        {
          name = "my-public-ip"
          value = "10.100.0.0/24"
        }
      ]
    }
    deletion_protection = false
  }
}

# create a sql database
}

