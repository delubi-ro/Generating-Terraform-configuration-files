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

  tags {
    Name = "terraform-aws-vpc"
  }
}

# make a vpn gateway#
resource "aws_vpn_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"

  tags {
    Name = "terraform-aws-vpn-gateway"
  }
}

# create a customer gateway
resource "aws_customer_gateway" "name_2" {
  bgp_asn    = 65000
  ip_address = "${aws_eip.default.public_ip}"
  type       = "ipsec.1"

  tags {
    Name = "terraform-aws-customer-gateway"
  }
}

# make a vpn connection
resource "aws_vpn_connection" "name_3" {
  customer_gateway_id = "${aws_customer_gateway.name_2.id}"
  type                = "ipsec.1"
  static_routes_only  = true

  tags {
    Name = "terraform-aws-vpn-connection"
  }
}

