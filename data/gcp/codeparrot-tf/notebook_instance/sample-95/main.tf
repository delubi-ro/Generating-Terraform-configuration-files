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

# create a notebook instance in us west 1. Use machine type e2 medium and vm image from deeplearning-platform-release and image familiy tf-latest-cpu
resource "google_compute_instance" "name_0" {
  name = "my-notebook-instance-${random_suffix}"
  machine_type = "e2-medium"
  zone = "europe-west1-b"
  tags = ["minimal-gce-example-com-k8s-io-role-master"]

  disk {
    image = "debian-cloud/debian-9"
    auto_delete = true
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata_startup_script = "sudo apt-get update; sudo apt-get install -y nginx"

  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }

  metadata_startup_script_ps1 = file("${path.module}/data/google_compute_instance_template_master-us-test1-a-ha-gce-example-com_metadata_startup_script_ps1_content")
  metadata_startup_script_ps2 = file("${path.module}/data/google_compute_instance_template_master-us-test1-b-ha-gce-example-com_metadata_startup_script_ps2_content")
  service_account {
    scopes = ["https://www.googleapis.com/auth/compute.readonly"]
  }
}

