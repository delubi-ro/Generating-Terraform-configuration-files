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

# resource block, sql database instance. Set database version to MYSQL_5_7 and use setting tier db-f1-micro. Also, enable deletion protection.
resource "google_sql_database" "name_0" {
  name     = "my-database"
  instance = google_compute_instance.vm_instance.name
  # deletion_protection = false
  # maintenance_window_day = 7
  # maintenance_window_hour = 12
  # disk {
  #   auto_delete  = true
  #   disk_size_gb = 10
  # }
}

# create a sql database. Use the sql database instance name defined in the previous block
resource "google_sql_database" "name_1" {
  name     = "my-database-f1-micro"
  instance = google_compute_instance.vm_instance.name
  # deletion_protection = false
  # maintenance_window_day = 7
  # maintenance_window_hour = 12
  # disk {
  #   auto_delete  = true
  #   disk_size_gb = 10
  # }
}

