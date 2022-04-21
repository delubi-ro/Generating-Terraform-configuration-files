provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east-1
provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"
}

# Output block, create public DNS URL from vm/public_ip
# This is the public DNS server of the EC2 instance
output "name_1" {
  value = "${aws_instance.name_0.public_ip}"
}

