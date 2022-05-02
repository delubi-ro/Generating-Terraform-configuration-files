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
  identifier_prefix = "t2"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version         = "5.6.27"
  instance_class         = "db.t2.micro"
  name                   = "t2"
  username               = "foo"
  password               = "barbaz"
  publicly_accessible    = false
  vpc_security_group_ids = ["${aws_security_group.rds.id}"]
  db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
  parameter_group_name    = "default.mysql5.6"
  multi_az                = false
  storage_type            = "gp2"
  apply_immediately       = true
  multi_az_load_balancing = false
  storage_encrypted       = false
  backup_retention_period   = 7
  maintenance_window      = "Mon:03:00-Mon:04:00"
  multi_az_load_balancing_policy = "Basic"
  skip_final_snapshot    = true
  storage_type_ui_visible = false
  tags = {
    Name = "t2"
  }
}

