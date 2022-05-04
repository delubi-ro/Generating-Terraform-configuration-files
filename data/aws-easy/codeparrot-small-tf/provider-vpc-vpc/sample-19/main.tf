terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block with the AWS provider
provider "aws" {
  alias  = "us-east-1"
  region  = "us-east-1"
}

# Resource block to Create VPC
resource "aws_vpc" "name_0" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags {
    Name = "terraform-example-vpc"
  }
}

# Resource block with VPC attachment
resource "aws_internet_gateway" "name_1" {
  vpc_id = "${aws_vpc.name_0.id}"
}

