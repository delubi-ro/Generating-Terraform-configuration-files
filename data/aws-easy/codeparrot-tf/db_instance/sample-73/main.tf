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
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7.11"
  instance_class       = "db.t2.micro"
  name                 = "example_database_instance"
  username             = "admin"
  password             = "admin"
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
  parameter_group_name   = "${aws_db_parameter_group.default.id}"
  availability_zone      = "us-east-1b"
  multi_az                = true
  storage_type            = "gp2"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az_load_balancing = true
  publicly_accessible_storage = true
  storage_encrypted       = false
  maintenance_window      = "sun:04:30-sun:04:30"
  backup_window           = "04:30-sun:04:30"
  maintenance_window_details {
    preference = "CUSTOM_PREFERENCE"
    days_of_week {
      name = "MONDAY"
    }
    hours_of_day = ["4"]
  }
  name = "example_database_instance"
  username = "admin"
  password = "admin"
  parameter_group_name = "${aws_db_parameter_group.default.id}"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az                = true
  storage_type            = "gp2"
  backup_retention_period = 7
  apply_immediately       = true
  multi_az_load_balancing = true
  publicly_accessible_storage = true
  storage_encrypted       = false
  maintenance_window      = "sun:04:30-sun:04:30"
  backup_window           = "04:30-sun:04:30"
  maintenance_window_details {
    preference = "CUSTOM_PREFERENCE"
    days_of_week {
      name = "MONDAY"
    }
    hours_of_day = ["4"]
  }
  tags = {
    Name = "example_database_instance"
  }
}

