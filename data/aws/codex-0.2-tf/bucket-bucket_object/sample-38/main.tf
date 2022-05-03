terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block with region us-east-1
provider "aws" {
  region = "us-east-1"
}

# Create S3 Bucket Resource. Set bucket to cookie
resource "aws_s3_bucket" "name_0" {
  bucket = "cookie"
}

# Resource, aws s3 bucket object. Set key to index.html and use the s3 bucket id
resource "aws_s3_bucket_object" "name_1" {
  key    = "index.html"
  bucket = aws_s3_bucket.name_0.id
  content = <<EOF
<html>
  <head>
    <title>Cookie Monster</title>
  </head>
  <body>
    <h1>Cookie Monster</h1>
    <p>C is for cookie, that's good enough for me</p>
  </body>
</html>
EOF
}

