terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS provider block in region us-east-1 region and default profile
provider "aws" {
  region  = "us-east-1"
}

# Resource block to create a random pet name of length 5 with separator - this is the first element is a string
resource "random_pet" "name_0" {
  length  = 5
  prefix  = "terraform-"
  number  = true
  lower   = true
  number  = true
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
}

