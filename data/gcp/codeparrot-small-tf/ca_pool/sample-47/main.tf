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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_region_instance_group_manager" "name_0" {
  name = "terraform-example-instance-group-manager"
  base_instance_name = "my-instance-group-manager"
  region = "europe-west4"
  version {
    instance_template = google_compute_instance_template.instance_template.id
    name              = "primary"
  }
}

