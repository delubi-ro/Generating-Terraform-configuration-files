terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region  = "us-east-1"
}

# Create Security Group that allows port 80, 443 inbound and all ports outbound
# http, https, and all
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Security Group for EC2 demo"
  vpc_id      = "${aws_vpc.default.id}"

  tags {
    Name = "ec2demo"
  }
}

# Create EC2 Instance with ami set to ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc web security group id/name
resource "aws_instance" "name_1" {
  ami           = "ami-0915bcb5fa77e4892"
  instance_type = "t2.micro"
}

