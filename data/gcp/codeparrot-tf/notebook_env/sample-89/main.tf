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
  location = "europe-west4-a"
  machine_type = "europe-west4"
  tags = ["notebooks"]

  # create a boot disk from a public URL
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance
  instance_name = "notebooks-instance-${random_suffix}"
  instance_type = "n1-standard-1"
  zone = "europe-west4-a"

  # create a boot disk from a public URL
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance
  instance_name = "notebooks-instance-${random_suffix}"
  instance_type = "n1-standard-1"
  zone = "europe-west4-a"

  # create a boot disk from a public URL
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance
  instance_name = "notebooks-instance-${random_suffix}"
  instance_type = "n1-standard-1"
  zone = "europe-west4-a"

  # create a boot disk from a public URL
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance
  instance_name = "notebooks-instance-${random_suffix}"
  instance_type = "n1-standard-1"
  zone = "europe-west4-a"

  # create a boot disk from a public URL
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance
  instance_name = "notebooks-instance-${random_suffix}"
  instance_type = "n1-standard-1"
  zone = "europe-west4-a"

  # create a boot disk from a public URL
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # create a network interface in the correct region
  network_interface {
    network = "default"
    access_config {
    }
  }

  # create a instance
  instance_name = "notebooks-instance-${random_suffix}"
  instance_type = "n1-standard-1"
  zone = "
}

