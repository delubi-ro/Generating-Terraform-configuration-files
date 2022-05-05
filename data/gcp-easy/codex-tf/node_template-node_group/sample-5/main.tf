terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name         = "my-template"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name        = "my-node-group"
  description = "my node group"
  node_count  = 3
  node_type   = "n1-standard-1"
  zone        = "us-central1-a"

  node_template {
    node_template = google_compute_instance_template.name_0.self_link
  }
}

