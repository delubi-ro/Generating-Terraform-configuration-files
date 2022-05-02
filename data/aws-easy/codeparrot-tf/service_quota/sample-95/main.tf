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

# create a service quota resource
resource "aws_service_quota" "name_0" {
  provider = "aws.us-east-1"
  name     = "service-quota"
  project   = "service-project"
  ingress {
    "from" = "0"
    "to"   = "0"
    "protocol" = "tcp"
    "cidr" = "0.0.0.0/0"
  }
  egress {
    "from" = "0"
    "to"   = "0"
    "protocol" = "-1"
    "cidr" = "0.0.0.0/0"
  }
  tags = {
    "Name" = "service-quota"
  }
}

