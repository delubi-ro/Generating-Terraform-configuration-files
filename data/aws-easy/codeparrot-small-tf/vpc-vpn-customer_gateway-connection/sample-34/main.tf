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

# Create a AWS VPC resourceresource block
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# make a vpn gateway to the VPC
resource "aws_vpn_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

# create a customer gateway to the VPN
resource "aws_customer_gateway" "name_2" {
  bgp_asn    = 65000
  ip_address = "${aws_instance.ec2demo.public_ip}"
}

# make a vpn connection to the VPN
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id = "${aws_vpn_gateway.name_1.id}"
  customer_gateway_id = "${aws_customer_gateway.name_2.id}"
}

