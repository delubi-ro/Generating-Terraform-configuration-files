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

# create a CaPool resource. Located in europe west 4, enterprise tier and set publishing options ca cert and crl to true
resource "google_compute_instance" "name_0" {
  name = "my-compute-instance-2-%%{random_suffix}"
  machine_type = "f1-micro"
  zone = "europe-west1-b"
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the custom_data_disk_type to pd-ssd for data disk
  disk {
    source_image = "debian-cloud/debian-9"
    auto_delete  = true
    boot         = true
    type         = "pd-standard"
    disk_size_gb = 50
  }
  # Set the custom_data_disk_type to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    // TODO: Set the disk_size_gb to 10GB for data disk
    type         = "pd-standard"
    disk_size_gb = 100
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the custom_data_disk_type to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    type         = "pd-standard"
    disk_size_gb = 50
  }
  # Set the boot disk to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    type         = "pd-standard"
    disk_size_gb = 100
  }
  # Set the boot disk to pd-ssd for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    type         = "pd-standard"
    disk_size_gb = 50
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
  # Set the custom_data_disk_type to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    type         = "pd-standard"
    disk_size_gb = 100
  }
  # Set the boot disk to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    type         = "pd-standard"
    disk_size_gb = 50
  }
  # Set the custom_data_disk_type to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    type         = "pd-standard"
    disk_size_gb = 100
  }
  # Set the boot disk to pd-standard for data disk
  disk {
    // Ephemeral IP
    // TODO: Set the custom_data_disk_type to pd-ssd for data disk
    type         = "pd-standard"
    disk_size_
}

