provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block with variable region
provider "aws" {
  region = "us-east-1"
}

# varaible called ec2_ami_id with default ami-0915bcb5fa77e4892 and a condition to make sure string is an AMI id
# https://github.com/hashicorp/terraform/issues/2499
# https://github.com/hashicorp/terraform/issues/2499
variable "name_0" {
  default = "ami-0915bcb5fa77e4892"
}

