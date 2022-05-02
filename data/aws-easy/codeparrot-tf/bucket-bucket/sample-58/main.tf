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
  bucket = "modules.${var.project_name}-${var.environment}-${var.colour}-${var.environment_vpc}-${var.colour}-module"
  acl    = "private"

  tags {
    Name        = "module"
    Environment = var.environment
    Colour      = var.colour
    Environment_vpc = var.environment_vpc
    Terraform   = var.colour
    Terraform_vpc = var.colour
  }
}

# Create S3 Bucket object for Module
resource "aws_s3_bucket" "name_1" {
  bucket = "modules.${var.project_name}-${var.environment}-${var.colour}-module-${var.colour}-${var.environment_vpc}-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-module-${var.colour}-
}

