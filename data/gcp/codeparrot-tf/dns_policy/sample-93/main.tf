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
  name = "dns-policy"
  zone = "europe-west1-b"

  # DNS zone where the instance is created
  zone_update_policy {
    mode = "FORWARD"
    suggested_value = "true"
  }

  # DNS zone where the instance is created
  zone_update_policy {
    mode = "FORWARD"
    suggested_value = "false"
  }

  # allow outbound traffic on all ports
  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }

  # allow inbound traffic on a port range
  allow {
    protocol = "tcp"
    ports = ["1-65535"]
  }

  # allow inbound traffic on a port range
  allow {
    protocol = "udp"
    ports = ["1-65535"]
  }

  # allow all outbound traffic
  allow {
    protocol = "all"
  }
}

