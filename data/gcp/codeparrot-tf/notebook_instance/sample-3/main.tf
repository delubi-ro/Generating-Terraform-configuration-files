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

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name = "my-notebook-instance-%%{random_suffix}"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["e2-medium","e2-micro","e2-standard","e2-ultrametric"]
  can_ip_forward = true
  can_ip_reverse = true
  can_ip_protocols = ["tcp"]
  can_ip_hosts = ["*"]
  disk {
    image = "debian-cloud/debian-9"
    type = "pd-standard"
    size = 20
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}

