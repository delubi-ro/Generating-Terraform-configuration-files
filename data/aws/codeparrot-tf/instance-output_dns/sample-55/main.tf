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
  region = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
  availability_zone = "us-east-1e"

  tags {
    Name = "ec2demo-az1"
  }
}

# Output block, create public DNS URL from vm_instance_ip
output "name_1" {
  value = "${aws_instance.ec2demo.public_ip}"
}

