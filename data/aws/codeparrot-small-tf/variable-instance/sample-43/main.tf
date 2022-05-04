terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region = "us-east-1"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string "t2.micro"
variable "name_0" {
  type = "map"
  default = {
    us-east-1 = "ami-0915bcb5fa77e4892"
    us-west-2 = "ami-0ff8a91507f77f867"
    us-west-1 = "ami-0ff8a91507f77f867"
  }
}

# variable called ec2_instance_count which is number type with default 1
variable "name_1" {
  type = "map"
  default = {
    t2.micro = "1"
    t2.micro = "2"
  }
}

# Create EC2 Instance with ami set to var.name_0, count as var.name_1 and instance type t3.micro
resource "aws_instance" "name_2" {
  ami           = var.name_0
  instance_type = var.ec2_instance_type
  count         = var.name_1
  instance_count  = var.name_1
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  subnet_id = var.ec2_subnet_id
  key_name = var.ec2_key_name
  tags = {
    Name = "ec2-instance-${count.index}"
    role = "ec2-instance"
    dc = var.ec2_datacenter
  }
}

