terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with only region set to europe north1
provider "google" {
  region = "europe-north1"
}

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name         = "notebook"
  machine_type = "e2-medium"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "projects/deeplearning-platform-release/global/images/tf-latest-cpu"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    startup-script = <<EOF
#! /bin/bash
set -e

# Install Jupyter Notebook
apt-get update
apt-get install -y python3-pip
pip3 install jupyter

# Install TensorFlow
pip3 install tensorflow==2.0.0

# Start Jupyter Notebook
jupyter notebook --allow-root --no-browser --ip=0.0.0.0 --port=8080
EOF
  }
}

