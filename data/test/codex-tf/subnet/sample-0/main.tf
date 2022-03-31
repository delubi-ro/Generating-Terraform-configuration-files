terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 and default profile
provider "aws" {
  region     = "us-east-1"
  profile    = "default"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true. Use VPC id
resource "aws_subnet" "name_1" {
  vpc_id            = "${aws_vpc.name_0.id}"
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

