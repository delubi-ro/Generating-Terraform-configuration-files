provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 region and default profile
provider "aws" {
  region  = "us-east-1"
}

# Create Security Group called vpc-ssh. It allows port 22 ingress and all ports and ip egress
# traffic from the internet.
resource "aws_security_group" "name_0" {
  name        = "vpc-ssh"
  description = "Security group for vpc-ssh"
  vpc_id      = "${aws_vpc.vpc.id}"

  tags {
    Name = "vpc-ssh"
  }
}

