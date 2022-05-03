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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Set machine type to f1-micro
  # Set network interface to debian-9
  network_interface {
    subnetwork = "default"
    access_config {
      # Ephemeral IP
    }
  }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_primary.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_secondary.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_terraform.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_hana_secondary.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_primary.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_terraform.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_primary.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_terraform.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_terraform.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_primary.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_terraform.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_terraform.address
  # }

  # Set network interface to f1-micro
  # Set access_config {
  #   nat_ip = google_compute_address.gcp_sap_hana_intip_primary.address
 
}

