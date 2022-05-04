terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS in region var.aws_region and default profile
provider "aws" {
  profile = "default"
  region  = var.aws_region
}

# Create variable called aws_region with default "us-east-1" and type string
# aws_region = "us-east-1"

# Create variable called aws_profile with default "default" and type string
variable "name_0" {
  type = "map"
  default = {
    us-east-1 = "t2.micro"
  }
}

# variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string
variable "name_1" {
  type = "map"
  default = {
    us-east-1 = "ami-0915bcb5fa77e4892"
  }
}

# create number variable called ec2_instance_count with default 1 and type number
# aws_instance_count = 1

# create number variable called ec2_instance_type with default 1 and type number
variable "name_3" {
  type = "map"
  default = {
    us-east-1 = "t2.micro"
  }
}

# creaet variable ec2_instance_type with default t3.micro and type string
variable "name_3" {
  type = "map"
  default = {
    us-east-1 = "t3.micro"
  }
}

# Create Security Group for SSH Traffic, allow port 22 ingress and all IP and ports egress
# to all internet
resource "aws_security_group" "name_4" {
  name        = "ec2_instance"
  description = "Security group for EC2 instances"
  vpc_id      = var.vpc_id

  # allow traffic for TCP 22
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow traffic for TCP 6379
  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow traffic for TCP 9090
  ingress {
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow traffic for TCP 9093
  ingress {
    from_port   = 9093
    to_port     = 9093
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow traffic for TCP 9000
  ingress {
    from_port   = 9000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow traffic for TCP 9001
  ingress {
    from_port   = 9001
    to_port     = 9001
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow traffic for TCP 9002
  ingress {
    from_port   = 9002
    to_port     = 9002
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow traffic for TCP 9003
  ingress {
    from_port   =
}

# Create Security Group for web traffic
}

# Create EC2 Instance with variable ec2 ami and instance type. Use vpc shh and vpc web security group ids
}

