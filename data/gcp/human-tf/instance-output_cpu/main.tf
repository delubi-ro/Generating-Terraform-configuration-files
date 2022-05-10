# Terraform block with google provider
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

# a compute instance that has a name, machine type f1-micro, debian-9 image and default network
resource "google_compute_instance" "name_0" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"    
  }
}

# output the cpu platform used by the compute instance
output "name_1" {
  description = "CPU platform of the instance"
  value       = google_compute_instance.name_0.cpu_platform
}