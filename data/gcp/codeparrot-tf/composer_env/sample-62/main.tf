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
    node_count = 3
  }

  composer_env {
    image = "debian-cloud/debian-9"
    type  = "DOCKER"
    version = "1.2.3"
  }

  # Add a network interface to allow HTTP(S) loadbalancing
  network_interface {
    subnetwork = "default"
    access_config {
      # add external ip to fetch packages
    }
  }

  # Create a container
  container_config {
    image = "debian-cloud/debian-9"
    type  = "DOCKER"
    version = "1.2.3"
  }

  # Start the container
  container_concurrency = 2

  # Start the instance
  instance_count = 3

  # Start the instance
  instance_config {
    # add external ip to fetch packages
    # add external ip to fetch packages
    # add external ip to fetch packages
    port {
      container_port = 80
      protocol    = "TCP"
    }
    port {
      container_port = 80
      protocol    = "TCP"
    }
  }

  # Start the instance
  instance_template {
    metadata {
      labels = {
        app = "my-app"
      }
    }
    spec {
      container {
        image = "debian-cloud/debian-9"
        image_pull_policy = "Always"
        name  = "my-app"
        command = ["/bin/bash", "-c"]
        args = ["echo 'hello world'" ]
        securityContext = "SELF_MANAGED_OPTIONS"
      }
    }
  }

  # Start the instance
  instance_group_urls = [
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/logging.write",
    "https://www.googleapis.com/auth/monitoring",
    "https://www.googleapis.com/auth/devstorage.read_only",
    "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
    "https://www.googleapis.com/auth/ndev.clouddns.readwrite.readonly",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.com/auth/cloud_debugger",
    "https://www.googleapis.com/auth/cloud-platform",
    "https://www.googleapis.com/auth/cloud-debugger.write",
    "https://www.googleapis.com/auth/cloud_debugger.readonly",
    "https://www.googleapis.com/auth/service.management.readonly",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.com/auth/cloud_debugger.readonly",
    "https://www.googleapis.com/auth/servicecontrol",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.com/auth/cloud_debugger.readonly",
    "https://www.googleapis.com/auth/service.management",
    "https://www.googleapis.com/auth/trace.append",
    "https://www.googleapis.
}

