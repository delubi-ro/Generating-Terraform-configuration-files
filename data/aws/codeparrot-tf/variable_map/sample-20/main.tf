provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS region var.name_0
variable "name_0" {
  description = "AWS region"
  default     = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev
variable "name_1" {
  description = "AWS region map"
  default     = {
    us-east-1 = "ami-0ff8a91507f77f867"
  }
}

