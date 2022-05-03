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

# create compute network, give it a name
resource "google_compute_network" "name_0" {
  name = "my-network-${random_suffix}"
  auto_create_subnetworks = "false"
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web, ssh, and https web.
resource "google_compute_firewall" "name_1" {
  name = "my-firewall-${random_suffix}"
  network = "${google_compute_network.name_0.self_link}"
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["80", "8080", "1000-2000"]
  }

  allow {
    protocol = "udp"
    ports = ["80", "8080"]
  }

  source_tags = ["web"]
}

