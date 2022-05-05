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
  name         = "notebook-instance"
  machine_type = "e2-medium"
  zone         = "us-west1-b"

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

# Install base packages
apt-get update
apt-get install -yq --no-install-recommends \
  build-essential \
  curl \
  git \
  libfreetype6-dev \
  libpng12-dev \
  libzmq3-dev \
  pkg-config \
  python \
  python-dev \
  rsync \
  software-properties-common \
  unzip \
  && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

# Install pip
curl -O https://bootstrap.pypa.io/get-pip.py && \
python get-pip.py && \
rm get-pip.py

# Add SNI support to Python
pip --no-cache-dir install \
  pyopenssl \
  ndg-httpsclient \
  pyasn1

# Install useful Python packages using apt-get to avoid version incompatibilities with Tensorflow binary
# especially numpy, scipy, skimage and sklearn (see https://github.com/tensorflow/tensorflow/issues/2034)
apt-get update && apt-get install -y \
  python-numpy \
  python-scipy \
  python-nose \
  python-h5py \
  python-skimage \
  python-matplotlib \
  python-pandas \
  python-sklearn \
  python-sympy \
  && \
apt-get clean && \
rm -rf /var/lib/apt
}

