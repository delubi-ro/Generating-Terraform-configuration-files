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
  name = "my-firewall-policy"
  network = "default"
  source_ranges = ["10.0.0.0/8"]
  direction = "INGRESS"
  priority = 1
  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  allow {
    protocol = "udp"
    ports = ["22"]
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  allow {
    protocol = "udp-hh"
  }
  allow {
    protocol = "sctp-hh"
  }
  allow {
    protocol = "ah-sg-6to4"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "udp-he"
  }
  allow {
    protocol = "sctp-he"
  }
  allow {
    protocol = "udp-pmtu"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "ah-sg-6to4"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "udp-he"
  }
  allow {
    protocol = "sctp-he"
  }
  allow {
    protocol = "udp-pmtu"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "ah-sg-6to4"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "udp-he"
  }
  allow {
    protocol = "sctp-he"
  }
  allow {
    protocol = "udp-pmtu"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "ah-sg-6to4"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "udp-he"
  }
  allow {
    protocol = "sctp-he"
  }
  allow {
    protocol = "udp-pmtu"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "ah-sg-6to4"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "udp-he"
  }
  allow {
    protocol = "sctp-he"
  }
  allow {
    protocol = "udp-pmtu"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "ah-sg-6to4"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "udp-he"
  }
  allow {
    protocol = "sctp-he"
  }
  allow {
    protocol = "udp-pmtu"
  }
  allow {
    protocol = "ah-sg-6to4"
  }
  allow {
    protocol = "sctp-pmtu"
  }
  allow {
    protocol = "
}

