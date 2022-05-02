terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in us east 1
provider "aws" {
  region = "us-east-1"
}

# resource block: create 5 EC2 instances with ami-047a51fa27710816e and t2.micro 
# type
resource "aws_instance" "name_0" {
  ami           = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  count         = 5
}

