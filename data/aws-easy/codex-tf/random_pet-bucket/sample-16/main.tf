terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    random = {
      source  = "hashicorp/random"
    }
  }
}

# AWS provider block
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name 
resource "random_pet" "name_0" {
  keepers = {
    # Generate a new pet name when changing this input
    pet_name = "pet-name"
  }
}

# Create AWS S3 bucket 
resource "aws_s3_bucket" "name_1" {
  bucket = "${random_pet.name_0.id}"
  acl    = "private"
}

