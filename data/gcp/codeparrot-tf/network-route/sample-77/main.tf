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

# a compute network resource with a name and subnet
resource "google_compute_network" "name_0" {
  name = "my-network"
  auto_create_subnetworks = "false"
  routing_mode = "REGIONAL"
  project = google_project.project.project_id

  depends_on = [
    google_project_service.compute_api,
    google_project_service.container_api,
  ]
}

# compute route with dest range 15.0.0.0/24 and next hop id 10.132.1.5. Use the compute network id and set priority to 100 to get a new route.
resource "google_compute_route" "name_1" {
  name = "compute-route"
  dest_range = "15.0.0.0/24"
  network = google_compute_network.name_0.self_link

  next_hop_vpn_tunnel = "15.0.0.254"
  priority = 100

  depends_on = [
    google_project_service.compute_api,
    google_project_service.container_api,
  ]
}

