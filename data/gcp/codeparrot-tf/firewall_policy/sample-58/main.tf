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

# create a firewall policy. Set parent to "organizations/12345" and set short name to my policy
resource "google_compute_firewall" "name_0" {
  name    = "my-firewall-policy"
  network = "default"
  priority = 1000

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  target_tags = ["foo", "bar"]
}

