provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with the following settings
provider "aws" {
  alias  = "us-east-1"
  region  = "us-east-1"
}

# data AMI ID block
data "aws_ami" "name_0" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
}

