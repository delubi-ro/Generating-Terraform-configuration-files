terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block
provider "google" {
}

# create a node template. Assign a name, set node type to us-central1
resource "google_compute_node_template" "name_0" {
  name      = "soletenant-tmpl"
  node_type = "n1-node-96-624"
}