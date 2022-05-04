apse
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block AWSresource
provider "aws" {
  alias  = "ec2demo"
  region  = "us-east-1"
}

# Resource block with an EC2 instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Time sleep resource block
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

