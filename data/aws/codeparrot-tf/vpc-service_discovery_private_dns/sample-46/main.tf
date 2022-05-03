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

# Create a VPC resource with cidr block 10.0.0.0/16. Enable DNS support and DNS hostnames
resource "aws_vpc" "name_0" {
  cidr_block = "${var.cidr_block}"
  enable_dns_hostnames = true
  tags {
    Name = "vpc-${var.cidr_block}"
  }
}

# Make a service discovery private dns namespace resource. Give it the name 'example.terraform.local' and use vpc id
resource "aws_route53_zone" "name_1" {
  name = "example.terraform.local"
  vpc_id = "${aws_vpc.name_0.id}"
}

