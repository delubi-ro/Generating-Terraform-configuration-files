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

# Create Database instance
resource "aws_db_instance" "name_0" {
  allocated_storage = 10
  engine            = "mysql"
  engine_version    = "5.6.35"
  instance_class    = "db.t2.micro"
  name              = "mydb"
  password          = "mypassword"
  username          = "myuser"
  vpc_security_group_ids = ["${aws_security_group.rds_sg.id}"]
  skip_final_snapshot = true
}

