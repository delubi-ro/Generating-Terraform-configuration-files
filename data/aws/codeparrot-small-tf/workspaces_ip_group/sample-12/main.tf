terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# create workspace ip group, give it a name. Set a rule with source 150.24.14.0/24 and description LAUNCH_INSTANCE_NAME
# and a rule with source 150.24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14.0/24.14
}

