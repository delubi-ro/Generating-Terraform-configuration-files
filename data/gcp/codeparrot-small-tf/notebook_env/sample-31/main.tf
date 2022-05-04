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

# create google notebooks enviroment, use container image located in repository gcr.io/deeplearning-platform-release/base-cpu. Use name notebooks-environment and location europe west4 a
# notebooks-environment block to create a new instance
resource "google_notebooks_instance" "name_0" {
  name = "my-instance-${random_suffix}"
  location = "europe-west4"
  machine_type = "europe-west4"
  machine_image = "gcr.io/deeplearning-platform-release/base-cpu:latest"

  # Notebooks instance machine type, can be either pd-ssd, pd-standard, or pd-ssd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance disk size, can be either pd-standard, pd-ssd, pd-standard
  # Notebooks instance boot order,
}

