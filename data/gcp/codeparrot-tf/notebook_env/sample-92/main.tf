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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 asia-east1
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${random_suffix}"
  location = "europe-west1"
  machine_type = "europe-west1-a"
  tags = ["notebooks"]

  # create a boot disk with a boot disk
  disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface with a network interface
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  # create a instance with a network interface
  instance_name = "notebooks-instance-${random_suffix}"
  network_interface_id = "${google_compute_network_interface.notebooks_instance.id}"

  # create a static IP address for instance
  static_ip = "10.0.0.5"

  # create a static route table for instance
  route_table_id = "${google_compute_route_table.notebooks_route_table.id}"

  # create a static route table for internet route
  route_table_address = "${google_compute_route_table.notebooks_route_table.address}"

  # create a static route table for public IP address
  route_table_public_ip_address = "${google_compute_route_table.notebooks_route_table.public_ip_address}"
}

