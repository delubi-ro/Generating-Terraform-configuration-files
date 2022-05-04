provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# data AMI ID block
data "aws_ami" "name_0" {
  most_recent = true
  owners      = ["099720109477"] # Canonical
}

# Create AWS instance
resource "aws_instance" "name_1" {
  ami           = data.aws_ami.name_0.id
  instance_type = "t2.micro"
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.default.id]
  subnet_id = aws_subnet.default.id
  tags = {
    Name = "terraform-example"
  }
}

