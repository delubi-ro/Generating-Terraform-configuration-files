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

# create a firewall policy 
resource "google_compute_firewall" "name_0" {
  name = "allow-internal"
  network = "default"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports = [
      "22",   # SSH
      "80",   # HTTP
      "443", # HTTPS
      "4400", # Chronos
      "5050", # Mesos
      "8080", # Marathon
      "8500"  # Consul API
    ]
  }
}

