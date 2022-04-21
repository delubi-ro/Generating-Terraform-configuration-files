terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create vpc resource, use cidr block 10.1.0.0/16 and assign generated ipv6 cidr block
resource "aws_vpc" "name_0" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-example"
  }
}

# create an egress only internet gateway, use vpc id, and associate it with the outside world
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
  tags = {
    Name = "terraform-example"
  }
}

