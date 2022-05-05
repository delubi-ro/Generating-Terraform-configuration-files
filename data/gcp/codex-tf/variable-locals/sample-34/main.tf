terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block with default settings
provider "google" {
  credentials = file("${path.module}/credentials.json")
  project     = var.project
  region      = var.region
}

# a string type variable called name with default value "service"
variable "name_0" {
  default = "service"
}

# local block with a common labels block. service is set to name variable
locals {
  common_labels = {
    service = var.name_0
  }
}

