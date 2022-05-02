provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# AWS provider block in region us-east-1
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Resource block to create a random pet name of length 5 with separator - [a-z]
resource "random_pet_name" "name_1" {
  length  = 5
  special = false
  upper   = false
}

# Resource Block: Create AWS S3 Bucket with bucket set as random pet name
resource "aws_s3_bucket" "name_2" {
  bucket = "terraform-test-bucket"
  acl    = "private"

  tags {
    Name = "terraform-test-bucket"
  }
}

