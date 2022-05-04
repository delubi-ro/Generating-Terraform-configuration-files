terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with random provider
provider "random" {
  version = "~> 2.0"
}

# Resource block to create a random pet name
resource "random_pet" "name_0" {
  length    = 1
  prefix    = "pet-"
  separator = "-"
}

# Create AWS S3 bucketresource
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-state-${random_pet.name_0.id}"
  acl    = "private"
}

