provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create S3 Bucket Resource for Module
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"
  force_destroy = true
}

# Create S3 Bucket object for Module
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "terraform.tfstate"
  source = "./terraform.tfstate"
}

