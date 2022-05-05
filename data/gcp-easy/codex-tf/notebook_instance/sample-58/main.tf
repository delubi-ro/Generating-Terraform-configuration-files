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

# create a notebook instance 
resource "google_notebooks_instance" "name_0" {
  name          = "my-instance"
  machine_type  = "n1-standard-4"
  boot_disk_size = 15
  boot_disk_type = "pd-standard"
  accelerator_config {
    type = "NVIDIA_TESLA_T4"
    count = 1
  }
  network_config {
    network = "default"
  }
  no_proxy_access = true
  no_public_ip = true
  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}

