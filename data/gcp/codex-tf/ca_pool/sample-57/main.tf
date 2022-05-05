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
resource "google_privateca_certificate_authority" "name_0" {
  provider = google-beta

  name = "ca-pool"
  type = "SUBORDINATE"
  tier = "ENTERPRISE"
  region = "europe-west4"

  config {
    key_spec = "RSA_4096"
    is_ca = true
    reuse_key = true
    subject_config {
      subject {
        common_name = "ca-pool"
      }
    }
  }

  lifetime {
    create_time = "2020-04-01T00:00:00.000Z"
    lifetime = "P90D"
  }

  issuing_options {
    allow_csr_extension_override = true
    include_ca_certificate = true
    include_crl_access_url = true
  }
}

