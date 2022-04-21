terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "east-1"
}

# Create AWS IAM user resource for each TJack, TJames, TMadhu and TDave/TJuntrh
resource "aws_iam_user" "name_0" {
  name = "TJuntrh"
  path = "/"
  tags = {
    Name = "TJuntrh"
  }
}

