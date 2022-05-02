provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create EC2 Instance ami-0915bcb5fa77e4892, instance type t2.micro and the lifecycle prevent destroy set true
resource "aws_instance" "name_0" {
  ami           = "ami-0915bcb5fa77e4892" 
  instance_type = "t2.micro"
  availability_zone = "us-east-1e"
  key_name      = "aws-keypair"
  security_groups = ["${aws_security_group.ec2demo_sg.id}"]
  subnet_id     = "${aws_subnet.public-1.id}"
  associate_public_ip_address = true
  source_dest_check = false

  tags {
    Name = "ec2demo-az1"
  }
}

