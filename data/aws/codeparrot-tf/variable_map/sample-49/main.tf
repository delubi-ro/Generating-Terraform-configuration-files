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
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

# Create Variable that is a map of strings. The default is that key Terraform maps to true and Environment key maps to dev, prod, stage, prod_stage, stage_prod, stage_stage_prod
variable "name_1" {
  type = "map"
  default = {
    eu-west-1 = "ami-0ff8a91507f77f867"
    us-east-1 = "ami-0e1d7a7a5"
    us-west-1 = "ami-0d50de6a"
    us-west-2 = "ami-0d50de6a"
    eu-central-1 = "ami-0d50de6a"
    eu-west-3 = "ami-0d50de6a"
    ap-southeast-1 = "ami-0d50de6a"
    ap-southeast-2 = "ami-0d50de6a"
    ap-northeast-1 = "ami-0d50de6a"
    ap-northeast-2 = "ami-0d50de6a"
    sa-east-1 = "ami-0d50de6a"
    us-east-1 = "ami-0d50de6a"
    us-west-1 = "ami-0d50de6a"
    us-west-2 = "ami-0d50de6a"
    us-west-3 = "ami-0d50de6a"
    us-gov-west-1 = "ami-0d50de6a"
    us-gov-west-2 = "ami-0d50de6a"
    us-west-3 = "ami-0d50de6a"
    us-west-1 = "ami-0d50de6a"
    sa-east-1 = "ami-0d50de6a"
    us-east-1 = "ami-0d50de6a"
    us-west-1 = "ami-0d50de6a"
    us-west-2 = "ami-0d50de6a"
    us-west-3 = "ami-0d50de6a"
    us-gov-west-1 = "ami-0d50de6a"
    us-gov-west-2 = "ami-0d50de6a"
    us-gov-west-3 = "ami-0d50de6a"
    us-east-1 = "ami-0d50de6a"
    us-east-1 = "ami-0d50de6a"
    us-west-1 = "ami-0d50de6a"
    us-west-2 = "ami-0d50de6a"
    us-west-3 = "ami-0d50de6a"
    us-gov-west-1 = "ami-0d50de6a"
    us-gov-west-2 = "ami-0d50de6a"
    us-gov-west-3 = "ami-0d50de6a"
    us-east-1 = "ami-0d50de6a"
    us-east-1 = "ami-0d50de6a"
    us-west-1 = "ami-0d50de6a"
    us-west-2 = "ami-0d50de6a"
    us-
}

