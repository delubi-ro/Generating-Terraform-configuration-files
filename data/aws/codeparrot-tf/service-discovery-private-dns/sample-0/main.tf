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

# Create a VPC resource with cidr block 10.0.0.0/16. Enable DNS support and DNS hostnames
resource "aws_vpc" "name_0" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-example"
  }
}

# Make a service discovery private dns namespace resource. Give it the name 'example.terraform.local' and use vpc id# https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resource-record-sets-choosing-your-dns-namespace#aws-route53-private-zone-id
resource "aws_route53_record" "name_1" {
  zone_id = "Z1AFAKE1ZON3YO"
  name    = "example.com"
  type    = "A"
  ttl     = "300"
  records = ["10.0.0.0/16"]
}

