# Terraform Block with AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS with region "us-east-1"
provider "aws" {
  region  = "us-east-1"
}

# Resource, make aws instance. Use ami-038f1ca1bd58a5790, instance type t2.small and availability zone us-east-1e
resource "aws_instance" "name_0" {
  ami = "ami-038f1ca1bd58a5790"
  instance_type = "t2.small" 
  availability_zone = "us-east-1e"
}
