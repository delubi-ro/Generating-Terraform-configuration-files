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

# create dns policy, enable inbound forwarding and enable logging
resource "google_dns_policy" "name_0" {
  name = "dns-policy-${random_suffix}"
  zone_name = "europe-west1-b"
  description = "Terraform dns policy"

  # DNS
  enable_inbound_forwarding = true
  enable_logging = true

  # Cloudflare DNS zone
  dns_name = "cloudflare.com."

  # Cloudflare record sets
  managed_zone = "us-central1-a"

  # Cloudflare record sets
  managed_zone_ttl = "300"

  # Cloudflare record sets
  managed_zone_ttl_dns = "300"
}

