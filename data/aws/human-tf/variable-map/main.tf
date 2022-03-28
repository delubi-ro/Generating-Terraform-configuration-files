terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.aws_region
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Create Variable with a map of tags. The default is Terraform is key for true and Environment is key for dev
variable "name_0" {
  type = map(string)
  default = {
    Terraform = "true"
    Environment = "dev"
  }
}