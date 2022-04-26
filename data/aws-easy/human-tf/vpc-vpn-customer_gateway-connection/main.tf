# Terraform Block with AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
}

# Create a AWS VPC resource 
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# make a vpn gateway 
resource "aws_vpn_gateway" "name_1" {
  vpc_id = aws_vpc.name_0.id
}

# create a customer gateway
resource "aws_customer_gateway" "name_2" {
  bgp_asn    = 65000
  ip_address = "172.0.0.1"
  type       = "ipsec.1"
}

# make a vpn connection
resource "aws_vpn_connection" "name_3" {
  vpn_gateway_id      = aws_vpn_gateway.name_1.id
  customer_gateway_id = aws_customer_gateway.name_2.id
  type                = "ipsec.1"
  static_routes_only  = true
}