# Terraform block with google provider
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

# create a node template. Assign a name, set node type to us-central1
resource "google_compute_node_template" "name_0" {
  name      = "soletenant-tmpl"
  node_type = "n1-node-96-624"
}