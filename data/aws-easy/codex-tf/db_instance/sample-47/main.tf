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
  identifier = "terraform-db"
  instance_class = "db.t2.micro"
  allocated_storage = 5
  engine = "postgres"
  engine_version = "9.6.2"
  name = "terraform-db"
  username = "terraform"
  password = "terraform"
  skip_final_snapshot = true
}

