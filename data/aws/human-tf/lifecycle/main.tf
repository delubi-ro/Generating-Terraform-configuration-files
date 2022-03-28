terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in us east 1
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create EC2 Instance called web with Amazon Linux ami, lifecycle create before destroy true
resource "aws_instance" "name_0" {
  ami               = "ami-0915bcb5fa77e4892" # Amazon Linux
  instance_type     = "t2.micro"
  lifecycle {
    create_before_destroy = true
  }
}

