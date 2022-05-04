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
  description = "Terraform example DNS policy"
  type = "A"
  managed_zone = "my-managed-zone"
  rrdatas = [
    "1 ASPMX.L.GOOGLE.COM.",
    "2 ASPMX.L.GOOGLE.COM.",
    "3 ASPMX.L.GOOGLE.COM.",
    "4 ASPMX.L.GOOGLE.COM.",
  ]
}

