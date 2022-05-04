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
  description = "Terraform managed."
  policy_data = "{\"typeKind\" :  \"A\",\"kind\" :  \"A\",\"members\" :  [\"user:me@example.com\"]}"
}

