provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east as default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro instance type
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Output block, create public DNS URL from vm
output "name_1" {
  value = "http://${aws_instance.name_0.public_dns}"
}

