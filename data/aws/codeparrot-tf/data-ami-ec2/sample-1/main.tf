provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region set to us-east-1
provider "aws" {
  region  = "us-east-1"
}

# data block: Get latest AMI ID for Amazon Linux2 OS/2
data "aws_ami" "name_0" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

# Create AWS instance with data ami id and t2.micro#
resource "aws_instance" "name_1" {
  ami           = "ami-0ff8a91507f77f86" 
  instance_type = "t2.micro"
  key_name      = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  subnet_id     = "${aws_subnet.default.id}"
  associate_public_ip_address = true
  source_dest_check      = false
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume_size = "20"
    delete_on_termination = true
  }
  tags = {
    Name = "Data"
  }
  root_block_device {
    volume_type = "gp2"
    volume
}

