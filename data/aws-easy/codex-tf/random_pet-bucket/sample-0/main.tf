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
  name = "${var.random_pet_name}"
}

# Create AWS S3 bucket 
resource "aws_s3_bucket" "name_1" {
  bucket = "${var.random_pet_name}"
  acl    = "private"
}

