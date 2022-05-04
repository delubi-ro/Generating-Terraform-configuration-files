terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with the AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Security Group
resource "aws_security_group" "name_0" {
  name        = "terraform_example"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.default.id}"
}

# Create EC2 Instance
}

