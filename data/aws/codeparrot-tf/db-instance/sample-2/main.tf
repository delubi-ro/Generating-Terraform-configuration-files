terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region  = "us-east-1"
}

# Create RDS MySQL Database with 5 allocated storage and username foo and password barbaz. Instance class t2 micro and skip final snapshot
resource "aws_db_instance" "name_0" {
  allocated_storage = 5
  engine            = "mysql"
  engine_version    = "5.6.5"
  instance_class     = "db.t2.micro"
  name               = "db"
  username          = "root"
  password          = "changeme"
  db_subnet_group_name = "${aws_db_subnet_group.default.name}"
  parameter_group_name = "${aws_db_parameter_group.default.name}"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.default.name}"
  tags = {
    Name = "db"
  }
}

