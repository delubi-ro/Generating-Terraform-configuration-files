terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider blockresource
provider "random" {
  version = "~> 1.0"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  length  = 1
  special = false
}

# Create AWS S3 bucket
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state"
  acl    = "private"
}

