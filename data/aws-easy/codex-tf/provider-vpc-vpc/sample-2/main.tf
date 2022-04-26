terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# Provider block
provider "aws" {
  region = "us-east-1"
}

# Resource block to Create VPC 
resource "aws_vpc" "name_1" {
  cidr_block = "10.0.0.0/16"
}

# Resource block with VPC
resource "aws_vpc" "name_1" {
  cidr_block = "10.0.0.0/16"
}

