provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie file name
resource "aws_s3_bucket" "name_0" {
  bucket = "terraform-state"
  acl    = "private"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket idvariable
resource "aws_s3_bucket_object" "name_1" {
  bucket = aws_s3_bucket.name_0.id
  key    = "index.html"
  source = "./index.html"
}

