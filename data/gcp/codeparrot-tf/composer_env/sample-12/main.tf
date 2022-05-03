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

  # Create a container image for running composer
  image = "gcr.io/${var.composer_env_name}"

  # Create a container image for running composer
  container_image = "gcr.io/${var.composer_env_name}:latest"

  # Create a container image for running composer
  container_port = "80"

  # Startup script
  startup-script = <<-EOF
  sudo apt-get update
  sudo apt-get install -y nginx
  sudo service nginx start
  EOF
}

