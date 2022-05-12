provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS with region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev and prod
variable "name_0" {
  description = "Name of the key pair uploaded to AWS"
  default     = "key_name"
}

