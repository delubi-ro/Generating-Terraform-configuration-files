terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
}

# data block with google compute zones in europe west4. The status must be UP
data "google_compute_zones" "name_0" {
  region = "europe-west4"
  status = "UP"
  project = "terraform-338909"
}

# compute instance. There should be one count of the compute instance in each available zone. Type f1 micro, debian 9 image and default network interface. Assign a name
resource "google_compute_instance" "name_1" {
  name = "vm"
  count = length(data.google_compute_zones.name_0.names)

  machine_type = "f1-micro"
  zone         = data.google_compute_zones.name_0.names[count.index]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}

