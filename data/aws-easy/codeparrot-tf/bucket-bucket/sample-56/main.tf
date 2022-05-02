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
  bucket = "nubis-modules-terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  tags {
    Name = "nubis-modules-terraform-state"
  }
}

# Create S3 Bucket object
resource "aws_s3_bucket" "name_1" {
  bucket = "nubis-modules-terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
  }

  tags {
    Name = "nubis-modules-terraform-state"
  }
}

