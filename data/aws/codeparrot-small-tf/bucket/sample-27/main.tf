terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider aws block with us east 1 region and default profile
provider "aws" {
  profile = "east-1"
  region  = "us-east-1"
}

# Create S3 Bucket, set bucket to  "icecream" and add it to S3 bucket
resource "aws_s3_bucket" "name_0" {
  bucket = "icecream-terraform-state"
  acl    = "private"
}

