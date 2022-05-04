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

# create dns policy, enable inbound forwarding and enable loggingresource
resource "google_dns_policy" "name_0" {
  name = "my-dns-policy"
  description = "policy for Terraform DNS"
  policy_type = "A"
  priority = 1
}

