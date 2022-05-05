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
  name = "notebook"
  machine_type = "e2-medium"
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
pip3 install --upgrade pip
pip3 install jupyter

# Install TensorFlow
pip3 install tensorflow==2.0.0

# Install PyTorch
pip3 install torch torchvision

# Install Keras
pip3 install keras

# Install XGBoost
pip3 install xgboost

# Install scikit-learn
pip3 install scikit-learn

# Install matplotlib
pip3 install matplotlib

# Install pandas
pip3 install pandas

# Install seaborn
pip3 install seaborn

# Install numpy
pip3 install numpy

# Install scipy
pip3 install scipy

# Install jupyterthemes
pip3 install jupyterthemes

# Install plotly
pip3 install plotly

# Install cufflinks
pip3 install cufflinks

# Install statsmodels
pip3 install statsmodels

# Install pydot
pip3 install pydot

# Install graphviz
apt-get install -y graphviz

# Install pydotplus
pip3 install pydotplus

# Install pydot
pip3 install pydot

# Install graphviz
apt-get install -y graphviz

# Install pydotplus
pip3 install pydotplus

# Install pydot
pip3 install pydot

# Install graphviz
apt-get install -y graphviz

# Install
}

