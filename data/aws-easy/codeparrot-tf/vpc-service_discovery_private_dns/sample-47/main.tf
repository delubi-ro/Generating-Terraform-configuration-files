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

# Create a VPC resource
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "vpc-${var.environment}"
  }
}

# Make a service discovery private dns namespace resource
resource "aws_route53_zone" "name_1" {
  name = "private.${var.environment}.${var.region}.${var.service_name}.${var.domain_name}"
  vpc_id  = "${aws_vpc.name_0.id}"
}

