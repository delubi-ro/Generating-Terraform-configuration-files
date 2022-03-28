terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1
provider "aws" {
  region = "us-east-1"
}

# Create a AWS VPC resource with private network 10.0.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
}

# Create AWS subnets resource in private network 10.0.1.0/24 and map public ip on launch set true
resource "aws_subnet" "name_1" {
  vpc_id            = "${aws_vpc.name_0.id}"
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

# Create EC2 Instance with subnet, vpc security group, and ami Amazon Linux
resource "aws_instance" "name_2" {
  ami           = "ami-c5eabbf5"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.name_1.id}"
  vpc_security_group_ids = ["${aws_security_group.foo.id}"]
}

