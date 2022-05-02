terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region and profile set as default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block with AWS in us-west-1 region, profile set as default and alias aws-west-1
provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

# Resource block to Create VPC called vpc-us-east-1 which uses private network 10.1.0.0/16
resource "aws_vpc" "name_0" {
  cidr_block = "10.1.0.0/16"
  enable_dns_hostnames = true
  tags {
    Name = "vpc-us-east-1"
  }
}

# Resource block to Create VPC called vpc-us-west-1 which uses private network 10.1.0.0/16 and the provider aws.aws-west-1variable.aws-west-1-variable
resource "aws_vpc_dhcp_options" "name_1" {
  domain_name_servers = ["${aws_instance.ec2demo.public_dns}"]
  domain_name = "vpc.aws-west-1.aws.example.com"
  tags {
    Name = "vpc-us-west-1"
  }
}

