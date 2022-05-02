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

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "terraform-aws-vpc"
  }
}

# Create AWS subnets resource
resource "aws_subnet" "name_1" {
  vpc_id                  = "${aws_vpc.name_0.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1e"

  tags = {
    Name = "terraform-aws-subnet"
  }
}

# create a nat gateway
resource "aws_eip" "name_2" {
  vpc        = true
  depends_on = ["aws_internet_gateway.default"]
  depends_on = ["aws_vpc.name_0"]

  lifecycle {
    create_before_destroy = true
  }
}

