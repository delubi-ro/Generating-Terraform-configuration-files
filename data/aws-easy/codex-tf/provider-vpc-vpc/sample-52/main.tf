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
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "VPC-Terraform"
  }
}

# Resource block with VPC
resource "aws_subnet" "name_1" {
  count = 2
  vpc_id = aws_vpc.name_0.id
  cidr_block = "10.0.${count.index}.0/24"
  availability_zone = "us-east-1${count.index}"
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet-Terraform"
  }
}

