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
  version = "~> 10.0"

  # Add a default node pool with default service accounts.
  node_pools = [
    {
      name = "node-pool-${random_suffix}"
    }
  ]

  # Add a default node pool with default service accounts.
  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_labels = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_metadata = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_taints = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_labels = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_metadata = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_taints = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_labels = {
    all = []

    default-node-pool = [
      "default-node-pool-${random_suffix}",
    ]
  }

  # Add a default node pool with default service accounts.
  node_pools_metadata =
}

