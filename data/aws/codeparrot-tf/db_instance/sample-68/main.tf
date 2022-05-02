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
  identifier_prefix = "rds-mysql-db-"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version       = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "rds-mysql-db"
  username               = "foo"
  password               = "barbaz"
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.rds_mysql_sg.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.rds_mysql_db_subnet_group.id}"
  parameter_group_name   = "default.mysql5.6"
  multi_az                = false
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az_load_balancing = true
  storage_encrypted       = false
  backup_retention_period   = 7
  maintenance_window      = "Mon:03:00-Mon:04:00"
  maintenance_window_days = ["Mon:03:00"]
  backup_window           = "09:45-10:15"
  maintenance_window_start_time = "09:45"
  multi_az_load_balancing = false
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.rds_mysql_sg.id}"]
  tags {
    Name = "rds-mysql-db"
  }
}

