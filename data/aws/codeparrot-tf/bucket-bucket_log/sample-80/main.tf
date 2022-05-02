terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block: aws in us east 1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create an s3 bucket, set bucket to "my-tf-log-bucket" and acl to "log-delivery-write"
resource "aws_s3_bucket" "name_0" {
  bucket = "log-delivery-write-${var.environment}"
  acl    = "log-delivery-write"
}

# an s3 bucket, use bucket "my-tf-test-bucket" and acl private. Make a logging block, with target bucket id and target prefix "log/"
resource "aws_s3_bucket" "name_1" {
  bucket = "log-delivery-write-${var.environment}"
  acl    = "log-delivery-write"
  policy = <<POLICY
{
  "Id": "MyBucket",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "DenyUnEncryptedObjectUploads",
      "Effect": "Deny",
      "Principal": "*",
      "Action": [
        "s3:PutObject"
      ],
      "Resource": [
        "arn:aws:s3:::${aws_s3_bucket.name_0.arn}"
      ]
    }
  ]
}

