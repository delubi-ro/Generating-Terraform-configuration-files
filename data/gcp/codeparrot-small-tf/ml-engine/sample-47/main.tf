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

# ml engine model resource. With default name and in europe west 4 regions
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "ml-instance-${random_suffix}"
  base_instance_name = "europe-west4"
  region = "europe-west4"
}

