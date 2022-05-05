terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

# google provider block 
provider "google" {
  credentials = file("${path.module}/account.json")
  project     = "my-project"
  region      = "us-central1"
}

# variable block
variable "name_0" {
  description = "The project ID to use for the resources"
  default     = "my-project"
}

# local block
locals {
  bucket_name = "my-bucket"
}

