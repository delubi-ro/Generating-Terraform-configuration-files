rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create Database instance
resource "aws_db_instance" "name_0" {
  identifier_prefix  = "example"
  allocated_storage = 10
  engine            = "mysql"
  engine_version    = "5.6.27"
  instance_class    = "db.t2.micro"
  name              = "example_database_instance"
  username          = "admin"
  password          = "admin"
  publicly_accessible = false
  vpc_security_group_ids = ["${aws_security_group.default_egress.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.default_egress.id}"
  parameter_group_name = "default.mysql5.6"
  multi_az            = false
  publicly_accessible = false
  backup_retention_period = 7
  apply_immediately       = true
  multi_az_load_balancing = true
  skip_final_snapshot     = true
  storage_type            = "gp2"
  tags = {
    Name = "example_database_instance"
  }
}

