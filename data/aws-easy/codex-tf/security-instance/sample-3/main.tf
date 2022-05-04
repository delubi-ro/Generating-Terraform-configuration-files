terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
provider "aws" {
  region = "us-east-1"
}

# Create Security Group
resource "aws_security_group" "name_0" {
  name        = "sg_web"
  description = "Allow HTTP and SSH access"
  vpc_id      = "vpc-0f6e8e8d8f6e8e8d8"

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_web"
  }
}

# Create EC2 Instance 
resource "aws_instance" "name_1" {
  ami           = "ami-0bdb1d6c15a40392c"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id     = "subnet-0f6e8e8d8f6e8e8d8"
  vpc_security_group_ids = [aws_security_group.name_0.id]

  tags = {
    Name = "web"
  }
}

