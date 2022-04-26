terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

# AWS provider block
provider "aws" {
  region = "us-east-1"
}

# Resource block to create a random pet name 
resource "random_pet" "name_0" {
  count = 2
  name  = "pet"
}

# Create AWS S3 bucket 
resource "aws_s3_bucket" "name_1" {
  bucket = "terraform-tfstate-%{random_pet.name_0.count}"
  acl    = "private"
}

