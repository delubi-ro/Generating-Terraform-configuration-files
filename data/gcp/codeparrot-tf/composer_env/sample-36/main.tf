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

# create composer environment in region us-central1. Create software config and use image composer-2.0.0-preview.3-airflow-2.1.2
resource "google_composer_environment" "name_0" {
  name     = "composer-environment-${random_suffix}"
  region   = "us-central1"
  project  = var.project_id
  composer = google_composer_environment.name_0.id

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
  }

  # Add a default network interface to allow the instance to communicate with the default network.
  network_interface {
    subnetwork = "default"
  }

  # Create a new instance to launch the instance with.
  # The security group is not created by default.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  default_security_group {
    name        = "default-security-group-${random_suffix}"
    description = "Default security group that allows inbound and outbound traffic from the internet"
    vpc_id      = var.vpc_id
  }

  # Allow the instance to communicate with the default security group.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  # Allow the instance to communicate with the default security group.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  allow {
    protocol = "udp"
    ports    = ["443"]
  }

  # Allow the instance to communicate with the default security group.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  allow {
    protocol = "icmp"
  }

  # Allow the instance to communicate with the default security group.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  allow {
    protocol = "esp"
  }

  # Allow the instance to communicate with the default security group.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  allow {
    protocol = "ah"
  }

  # Allow the instance to communicate with the default security group.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
  allow {
    protocol = "sctp"
  }

  # Allow the instance to communicate with the default security group.
  # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/security_and_firewalls#default_security_group
 
}

