terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-west1"
}

# create compute network, give it a name and auto create subnetworks
resource "google_compute_network" "name_0" {
  name = "my-network"
  auto_create_subnetworks = false
}

# create compute firewall, give it the name test-firewall. Use the compute network name, allow protocol icmp, also allow tcp in ports 80, 8080 and 1000-2000. Use source tags web, ssh, icmp, ping, ping-local, local-exec, local-exec-custom, and use network tags firewall"
resource "google_compute_firewall" "name_1" {
  name = "my-firewall"
  network = google_compute_network.name_0.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = [
      "80",
      "8080",
      "1000-2000",
    ]
  }

  source_ranges = ["10.128.0.0/16", "10.128.64.0/16"]
}

