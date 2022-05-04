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
  cidr_block = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

# Make a service discovery private dns namespace resource. Give it the name 'example.terraform.local' and use vpc idresource
# resource "aws_route53_zone" "example" {
#   name = "example.terraform.local"
#   vpc_id = "${aws_vpc.name_0.id}"
# }

# Create a subnet resource with cidr block 10.0.1.0/24. Enable DNS support and DNS hostnames
resource "aws_subnet" "name_1" {
  vpc_id            = "${aws_vpc.name_0.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${data.aws_availability_zones.available.names[0]}"
  map_public_ip_on_launch = true
}

