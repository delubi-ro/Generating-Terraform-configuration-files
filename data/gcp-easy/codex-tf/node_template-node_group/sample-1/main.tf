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
  project     = var.project
  region      = var.region
}

# create a node template
resource "google_compute_instance_template" "name_0" {
  name         = "node"
  machine_type = "n1-standard-1"
  can_ip_forward = true

  tags = ["http-server"]

  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
  }

  metadata {
    ssh-keys = "ubuntu:${file("${path.module}/id_rsa.pub")}"
  }
}

# create a compute node group resource
resource "google_compute_node_group" "name_1" {
  name = "node"
  description = "Node Group"
  node_template = google_compute_instance_template.name_0.self_link
  target_size = 1
  initial_node_count = 1
  zone = var.zone
}

