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
  cidr_block = "10.0.0.0/16"
}

# make a vpn gateway to the VPN
resource "aws_vpn_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# create a customer gateway to the VPN
resource "aws_vpn_gateway_customer_gateway" "name_2" {
  vpc_id = "${aws_vpc.name_0.id}"
  # customer_gateway_id = "${aws_vpn_gateway.name_1.id}"
}

# make a vpn connection to the VPN
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id = "${aws_vpn_gateway.name_1.id}"
  customer_gateway_id = "${aws_vpn_gateway.name_1.id}"
}

