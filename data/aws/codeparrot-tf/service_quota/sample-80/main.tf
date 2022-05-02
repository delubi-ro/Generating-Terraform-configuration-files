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

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 7500 for production
resource "aws_service_quota" "name_0" {
  provider = "aws.foo"
  name     = "service-quota"
  resource   = "${aws_instance.ec2demo.id}"
  ingress {
    "cidr_block" = "0.0.0.0/0"
    "from_port" = 7500
    "to_port"   = 7500
  }
  egress {
    "cidr_block" = "0.0.0.0/0"
    "from_port" = 0
    "to_port"   = 0
  }
  tags {
    "Name" = "service-quota"
  }
}

