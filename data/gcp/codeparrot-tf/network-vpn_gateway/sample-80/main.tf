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

# create compute network with global routing mode and set auto create subnetworks to false
resource "google_compute_network" "name_0" {
  name = "my-network-${local.name_suffix}"
}

# resource compute ha vpn gateway, in the us central1 region and use the compute network id
resource "google_compute_ha_vpn_gateway" "name_1" {
  name    = "ha-vpn-${local.name_suffix}"
  network = google_compute_network.name_0.id
  region  = "us-central1"
  vpn_gateway_interface = "gke-1"
  # Do not create a VPN gateway if the gateway is created before
  # the VPN tunnel is created.
  # Do not create a VPN gateway if the gateway is created after
  # the VPN tunnel is created.
  create_vpn_gateway = false
  # Set the VPN gateway's link local to the VPN tunnel.
  # The VPN tunnel is used to connect the VPN tunnels to the
  # Google Cloud provider with the cloud-platform scope and the VPN
  # tunnel is used to connect the VPN tunnels to the Google Cloud
  # provider with the cloud-platform scope.
  vpn_gateway_interface = "gke-1"
  # Set the VPN gateway's link local to the VPN tunnel.
  # The VPN tunnel is used to connect the VPN tunnels to the
  # Google Cloud provider with the cloud-platform scope and the VPN
  # tunnel is used to connect the VPN tunnels to the Google Cloud
  # provider with the cloud-platform scope.
  tunnels = [google_compute_vpn_tunnel.ha_gateway1.tunnel1_vpn_tunnel]
}

