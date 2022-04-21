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

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LA#144.
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Security group for EC2 demo"
  vpc_id      = "${aws_vpc.default.id}"

  tags {
    Name = "ec2demo"
  }
}

