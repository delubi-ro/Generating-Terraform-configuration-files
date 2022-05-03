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

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc-${var.environment}"
  }
}

# create internet gateway and use vpc id
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
  tags = {
    Name = "internet-gateway-${var.environment}"
  }
}

