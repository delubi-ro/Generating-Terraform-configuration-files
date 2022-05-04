terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region
provider "aws" {
  region = var.region
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
variable "name_0" {
  default = "ami-0915bcb5fa77e4892"
  description = "AMI ID to use for EC2 instance"
  type = string
  condition = regex("^ami-([a-f0-9]{8}|[a-f0-9]{17})$", var.name_0)
}

