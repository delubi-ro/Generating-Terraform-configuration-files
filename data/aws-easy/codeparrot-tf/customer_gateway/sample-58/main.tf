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

# create customer gateway
resource "aws_customer_gateway" "name_0" {
  provider = "aws.first_found"
  customer_gateway_id = "${aws_customer_gateway.name_0.id}"
  tags = {
    Name = "tf-example-customer-gw"
  }
}

