provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Security Group called vpc-web. It allows port 80 and 443 ingress and all ports and ip egress
resource "aws_security_group" "name_0" {
  name        = "vpc-web"
  description = "Allow HTTP from Anywhere into ALB"
  vpc_id      = "${aws_vpc.vpc-web.id}"

  ingress {
    from_port   = 80
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

