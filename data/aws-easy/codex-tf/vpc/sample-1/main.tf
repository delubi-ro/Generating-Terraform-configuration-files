terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block
provider "aws" {
  region = "us-east-1"
}

# Resource block with an amazon VPC
resource "aws_vpc" "name_0" {
  cidr_block = "10.1.0.0/16"
}

