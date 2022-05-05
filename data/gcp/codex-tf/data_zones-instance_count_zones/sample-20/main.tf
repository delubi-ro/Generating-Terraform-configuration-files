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

# data block with google compute zones in europe west4. The status must be UP and project is terraform-338909
data "google_compute_zones" "name_0" {
  status = "UP"
  project = "terraform-338909"
}

# compute instance. There should be one count of the compute instance in each available zone. Type f1 micro, debian 9 image and default network interface. Assign a name
resource "google_compute_instance" "name_1" {
  count = "${length(data.google_compute_zones.name_0.names)}"
  name = "terraform-instance-${count.index}"
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

