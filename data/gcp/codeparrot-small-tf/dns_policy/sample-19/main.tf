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
  name = "my-dns-policy"
  description = "Terraform managed DNS policy"
  location = "europe-west1"
  policy_data = <<-EOF
  {
    "version": "2012-10-17",
    "Statement": [
      {
        "Action": [
          "dns",
          "compute.googleapis.com",
          "dns.googleapis.com",
          "compute.googleapis.com",
          "dns.googleapis.com",
          "compute.googleapis.com",
          "dns.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
          "compute.googleapis.com",
}

