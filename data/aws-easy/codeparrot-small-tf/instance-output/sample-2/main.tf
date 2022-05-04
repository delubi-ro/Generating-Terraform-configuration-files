provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with the following settings
provider "aws" {
  alias  = "us-east-1"
  region  = "us-east-1"
}

# Create EC2 Instances in AWS
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Output block
output "name_1" {
  value = "${aws_instance.name_0.public_ip}"
}

