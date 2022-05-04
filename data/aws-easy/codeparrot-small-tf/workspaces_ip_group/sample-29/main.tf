terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS instance
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create a workspace ip groupresource
resource "aws_ip_group" "name_0" {
  name = "ec2demo"
}

