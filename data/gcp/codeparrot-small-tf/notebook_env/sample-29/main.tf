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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 amd64-stable
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-vm-${random_suffix}"
  machine_type = "e2-micro"
  location = "europe-west4"
  initial_node_count = 1

  # Notebooks instance machine type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD SSD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)

  # Notebooks instance machine type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)

  # Notebooks instance machine type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk type, can be set to pd-standard (for PD HDD) or pd-ssd (for PD HDD)
  # Notebooks instance boot disk size, can be set to pd-standard (for PD HDD) or pd-ssd (
}

