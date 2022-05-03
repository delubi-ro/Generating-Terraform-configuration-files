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
  name = "dns-policy-${local.name_suffix}"
  zone = "europe-west1-b"

  # DNS zone to allow SSH access
  vpc = "my-vpc-${local.name_suffix}"

  # allow traffic from the world
  ingress {
    protocol = "tcp"
    ports    = ["22"]
  }

  # allow traffic from the world
  ingress {
    protocol = "udp"
    ports    = ["22"]
  }

  # allow traffic from the world
  ingress {
    protocol = "icmp"
  }

  # allow traffic from the world
  egress {
    protocol = "tcp"
    ports    = ["1-65535"]
  }
}

