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
  identifier_prefix = "rds-mysql-"
  allocated_storage    = 5
  engine                 = "mysql"
  engine_version       = "5.7.11"
  instance_class         = "db.t2.micro"
  name                   = "rds"
  username               = "foo"
  password               = "${var.rds_password}"
  db_subnet_group_name   = "${aws_db_subnet_group.rds_subnet_group.name}"
  parameter_group_name    = "default.mysql5.6"
  vpc_security_group_ids = ["${aws_security_group.rds_security_group.id}"]
  skip_final_snapshot    = true
  storage_type           = "gp2"

  # DB subnet group
  subnet_ids = ["${aws_subnet.rds_subnet_1.id}", "${aws_subnet.rds_subnet_2.id}"]

  # DB parameter group
  skip_final_snapshot = true
  parameter_group_name = "default.mysql5.6"

  # DB security group
  vpc_security_group_ids = ["${aws_security_group.rds_security_group.id}"]

  # DB subnet group
  subnet_ids = ["${aws_subnet.rds_subnet_3.id}", "${aws_subnet.rds_subnet_4.id}"]

  # DB parameter group
  skip_final_snapshot = true
  parameter_group_name = "default.mysql5.6"

  # DB parameter group
  skip_final_snapshot = true
  parameter_group_name = "default.mysql5.7"

  # DB security group
  vpc_security_group_ids = ["${aws_security_group.rds_security_group.id}"]

  # DB subnet group
  subnet_ids = ["${aws_subnet.rds_subnet_5.id}", "${aws_subnet.rds_subnet_6.id}"]

  # DB parameter group
  skip_final_snapshot = true
  parameter_group_name = "default.mysql5.7"

  # DB security group
  vpc_security_group_ids = ["${aws_security_group.rds_security_group.id}"]

  # DB subnet group
  subnet_ids = ["${aws_subnet.rds_subnet_7.id}", "${aws_subnet.rds_subnet_8.id}"]

  # DB parameter group
  skip_final_snapshot = true
  parameter_group_name = "default.mysql5.7"

  # DB security group
  vpc_security_group_ids = ["${aws_security_group.rds_security_group.id}"]

  # DB subnet group
  subnet_ids = ["${aws_subnet.rds_subnet_8.id}", "${aws_subnet.rds_subnet_9.id}"]

  # DB parameter group
  skip_final_snapshot = true
  parameter_group_name = "default.mysql5.7"

  # DB security group
  vpc_security_group_ids = ["${aws_security_group.rds_security_group.id}"]

  # DB subnet group
  subnet_ids = ["${aws_subnet.rds_subnet_9.id}", "${aws_subnet.rds_subnet_10.id}"]

  # DB parameter group
  skip_final_snapshot = true
  parameter_group
}

