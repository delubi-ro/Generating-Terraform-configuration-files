terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with the AWS instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create a AWS VPC resource
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# make a vpn gateway to the internet gateway
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# create a customer gateway to the internet gateway
resource "aws_customer_gateway" "name_2" {
  vpc_id = "${aws_vpc.name_0.id}"
}

