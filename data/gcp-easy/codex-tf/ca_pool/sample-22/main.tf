terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# create a CaPool resource
resource "google_compute_region_backend_service" "name_0" {
  name          = "my-backend-service"
  region        = var.region
  health_checks = [google_compute_http_health_check.default.self_link]
  backend {
    group = google_compute_instance_group_manager.default.instance_group
  }
}

