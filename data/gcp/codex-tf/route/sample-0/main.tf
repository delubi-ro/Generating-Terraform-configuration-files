terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block. Make it empty
provider "google" {
}

# a compute network resource with a name
resource "google_compute_network" "name_0" {
  name = "network-test-%{random_suffix}"
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100
resource "google_compute_route" "name_1" {
  name = "route-test-%{random_suffix}"
  dest_range = "15.0.0.0/24"
  next_hop_id = google_compute_instance.foobar.network_interface.0.access_config.0.nat_ip
  priority = 100
  network = google_compute_network.name_0.id
}

