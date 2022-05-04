terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAUNCH_IP_GROUP
resource "aws_security_group" "name_0" {
  name        = "terraform_ws"
  description = "Terraform Workspace"
  vpc_id      = "${aws_vpc.terraform_vpc.id}"

  ingress {
    from_port   = 150.24.14.0/24
    to_port     = 150.24.14.0/24
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.terraform_vpc.cidr_block}"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

