terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable "name_0" with a region
variable "name_0" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

# variable block
}

# make variable
}

# create variable block
}

# Create Security Group
}

# Create Security Group
}

# Create EC2 Instance
}

