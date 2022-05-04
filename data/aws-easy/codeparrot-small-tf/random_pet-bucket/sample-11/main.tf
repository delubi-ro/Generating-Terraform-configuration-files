provider "random" {
  version = "~> 2.0"
}

# AWS provider block
provider "aws" {
  version = "~> 2.0"
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

  # TODO: Lock down
  lifecycle_rule {
    id      = "delete-old-versions"
    prefix  = ""
    enabled = true

    expiration {
      days = 30
    }
  }
}

