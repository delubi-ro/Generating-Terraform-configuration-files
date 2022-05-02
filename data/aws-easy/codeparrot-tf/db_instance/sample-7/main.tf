rovider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block
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
  username               = "example_user"
  password               = "example_password"
  db_subnet_group_name   = "example_subnet_group"
  parameter_group_name   = "example_parameter_group"
  vpc_security_group_ids = ["${aws_security_group.example_db_instance.id}"]
  db_subnet_group_description = "example_db_subnet_group"
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  multi_az             = true
  storage_type          = "gp2"
  final_snapshot_identifier = "example_final_snapshot"
  skip_final_snapshot     = true
  vpc_subnet_group_name   = "example_subnet_group"
  skip_final_snapshot     = true
  storage_encrypted       = true
  vpc_security_group_ids = ["${aws_security_group.example_db_instance.id}"]
  tags = {
    Name = "example_database_instance"
  }
}

