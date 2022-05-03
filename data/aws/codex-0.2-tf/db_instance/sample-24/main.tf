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

# Create RDS MySQL Database with 5 allocated storage and username foo and password barbaz. Instance class t2 micro and skip final snapshot
resource "aws_db_instance" "name_0" {
  allocated_storage    = 5
  engine               = "MySQL"
  engine_version       = "5.6.21"
  instance_class       = "db.t2.micro"
  name                 = "baz"
  password             = "barbaz"
  username             = "foo"
  skip_final_snapshot  = true
}

