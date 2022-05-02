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
  identifier_prefix = "example"
  allocated_storage      = 10
  engine                 = "mysql"
  engine_version         = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "example_database_instance"
  username               = "admin"
  password               = "${var.db_password}"
  db_subnet_group_name    = "${aws_db_subnet_group.example.name}"
  parameter_group_name    = "${aws_db_parameter_group.example.name}"
  vpc_security_group_ids = ["${aws_security_group.example.id}"]
  skip_final_snapshot    = true
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az                = true
  publicly_accessible     = true
  storage_encrypted       = true
  maintenance_window      = "sun:10:30-sun:10:30"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  final_snapshot_identifier  = "example_final_snapshot"
  skip_final_snapshot      = true
  vpc_security_group_ids   = ["${aws_security_group.example.id}"]
  storage_encrypted       = true
  backup_window           = "04:00-04:30"
  maintenance_window      = "sun:10:30-sun:10:30"
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  final_snapshot_identifier  = "example_final_snapshot"
  skip_final_snapshot      = true
  vpc_security_group_ids   = ["${aws_security_group.example.id}"]
  storage_encrypted       = true
  backup_window           = "04:00-04:30"
  maintenance_window      = "sun:10:30-sun:10:30"
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  final_snapshot_identifier  = "example_final_snapshot"
  skip_final_snapshot      = true
  vpc_security_group_ids   = ["${aws_security_group.example.id}"]
  storage_encrypted       = true
  backup_window           = "04:00-04:30"
  maintenance_window      = "sun:10:30-sun:10:30"
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  final_snapshot_identifier  = "example_final_snapshot"
  skip_final_snapshot      = true
  vpc_security_group_ids   = ["${aws_security_group.example.id}"]
  storage_encrypted       = true
  backup_window           = "04:00-04:30"
  maintenance_window      = "sun:10:30-sun:10:30"
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  final_snapshot_identifier  = "example_final_snapshot"
  skip_final_snapshot      = true
  vpc_security_group_ids   = ["${aws_security_group.example.id}"]
  storage_encrypted       = true
  backup_window           = "04:00-04:30"
  maintenance_window      = "sun:10:30-sun:10:30"
  apply
}

