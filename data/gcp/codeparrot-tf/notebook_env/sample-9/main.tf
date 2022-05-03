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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 apex.
resource "google_notebooks_instance" "name_0" {
  name = "notebooks-instance-${local.name_suffix}"
  location = "europe-west4-a"
  machine_type = "e2-medium"
  tags = ["notebooks"]

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "100"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "200"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "300"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "400"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "500"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "600"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "700"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "800"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "900"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "1000"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "2000"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "4000"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "8000"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "10000"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "15000"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "2000000"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "30"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "40"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "50"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "60"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "70"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "80"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "90"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "100"
  }

  # create a persistent volume for the instance
  persistent_disk {
    disk_size_gb = "200"
  }

  # create a persistent volume for the instance
  persistent_disk
}

