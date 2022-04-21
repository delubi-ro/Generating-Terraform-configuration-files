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

# Create a AWS VPC resource with cidr block 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "terraform-example"
  }
}

# make a vpn gateway with the vpc id
resource "aws_internet_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
  tags = {
    Name = "terraform-example"
  }
}

# create a customer gateway with BGP ASN set to 65000, ip address 172.0.0.1 and type ipsec.1
resource "aws_customer_gateway" "name_2" {
  bgp_asn = 65000
  ip_address = "172.16.0.1"
  tags = {
    Name = "terraform-example"
  }
}

