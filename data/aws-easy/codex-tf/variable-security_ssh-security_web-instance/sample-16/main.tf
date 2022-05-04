terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  region = "us-east-1"
}

# Create variable 
variable "name_0" {
  default = "t2.micro"
}

# variable block
variable "name_1" {
  default = "ami-0bbe6b35405ecebdb"
}

# make variable
variable "name_2" {
  default = "terraform"
}

# create variable block
variable "name_3" {
  default = "subnet-0f9c9a2a9d9e2b2d2"
}

# Create Security Group
resource "aws_security_group" "name_4" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  vpc_id      = "vpc-0f3f0d9c0c9f9b8e8"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}

# Create Security Group
resource "aws_security_group" "name_5" {
  name        = "allow_ssh"
  description = "Allow SSH traffic"
  vpc_id      = "vpc-0f3f0d9c0c9f9b8e8"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

# Create EC2 Instance
resource "aws_instance" "name_6" {
  ami           = var.name_1
  instance_type = var.name_0
  key_name      = var.name_2
  subnet_id     = var.name_3

  security_groups = [
    aws_security_group.name_4.id,
    aws_security_group.name_5.id,
  ]

  tags = {
    Name = "web"
  }
}

