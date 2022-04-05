terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_ssl_certificate" "name_0" {
  name        = "ca_cert"
  private_key = file("test-fixtures/ssl/ca.key")
  certificate = file("test-fixtures/ssl/ca.crt")
  region      = "europe-north1"
  certificate_management_policy {
    auto_rotate_at = "2020-01-01T00:00:00.000Z"
    rotation_period = "1d"
    ca_certificate_id = google_compute_ssl_certificate.name_0.id
  }
}

