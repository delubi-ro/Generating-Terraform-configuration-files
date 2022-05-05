terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = var.project
  region      = var.region
}

# create a CaPool resource
resource "google_compute_region_autoscaler" "name_0" {
  name = "my-autoscaler"
  region = var.region
  target = google_compute_instance_group_manager.default.self_link
  autoscaling_policy {
    max_replicas = 5
    min_replicas = 2
    cool_down_period_sec = 60
    cpu_utilization {
      target = 0.5
    }
  }
}

