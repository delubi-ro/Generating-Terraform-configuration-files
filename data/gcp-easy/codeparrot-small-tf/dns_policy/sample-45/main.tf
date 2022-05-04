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

# create dns policy 
resource "google_dns_policy" "name_0" {
  name = "my-dns-policy-${random_suffix}"
  description = "A policy for my domain"
  policy_type = "A"
  project = google_compute_instance.vm_instance.project
}

