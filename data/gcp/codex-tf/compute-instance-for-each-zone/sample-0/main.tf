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

# data block with available google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
  available_resource_creation = "VMs"
  name_regex = "europe-west4.*"
  status = "UP"
  project = "terraform-338909"
}

# compute instance. Create an instance for each available compute zone. One zone for each value. Type f1 micro, debian 9 image, default network interface and giva a name
resource "google_compute_instance" "name_1" {
  count = "${length(data.google_compute_zones.name_0.names)}"
  name = "${join(",", data.google_compute_zones.name_0.names)}"
  machine_type = "f1-micro"
  zone = "${data.google_compute_zones.name_0.names[count.index]}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
}

