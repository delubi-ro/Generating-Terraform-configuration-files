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

  config {
    node_config {
      machine_type = "e2-micro"

      # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
      # See https://cloud.google.com/iam/docs/understanding-roles#permissions_roles
      service_account_roles = [
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer.admin",
        "roles/compute.xpnAdmin",
        "roles/compute.networkAdmin",
        "roles/compute.securityAdmin",
        "roles/iam.securityReviewer",
        "roles/iam.serviceAccountUser",
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer.admin",
        "roles/compute.xpnAdmin",
        "roles/compute.securityAdmin",
        "roles/iam.securityReviewer",
        "roles/iam.serviceAccountUser",
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer.admin",
        "roles/compute.xpnAdmin",
        "roles/compute.securityAdmin",
        "roles/iam.securityReviewer",
        "roles/iam.serviceAccountUser",
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer.admin",
        "roles/compute.xpnAdmin",
        "roles/compute.securityAdmin",
        "roles/iam.securityReviewer",
        "roles/iam.serviceAccountUser",
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer.admin",
        "roles/compute.xpnAdmin",
        "roles/compute.securityAdmin",
        "roles/iam.securityReviewer",
        "roles/iam.serviceAccountUser",
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer.admin",
        "roles/compute.xpnAdmin",
        "roles/compute.securityAdmin",
        "roles/iam.securityReviewer",
        "roles/iam.serviceAccountUser",
        "roles/logging.logWriter",
        "roles/monitoring.metricWriter",
        "roles/stackdriver.resourceMetadata.writer",
        "roles/storage.objectViewer",
        "roles/storage.objectViewer.admin",
        "roles/compute.xpnAdmin",
        "roles/compute.securityAdmin",
        "roles/iam.securityReviewer",
       
}

