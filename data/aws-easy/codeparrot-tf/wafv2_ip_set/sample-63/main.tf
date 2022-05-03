terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS security group
# IAM Role: Allow the Terraform AWS Service Agent the ability to perform other AWS services
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Allow the Terraform AWS Service Agent the ability to perform other AWS services"
  vpc_id      = "${aws_vpc.terraform-vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# create wafv2 ip set
resource "terraform_remote_state" "name_1" {
  backend = "s3"
  config {
    bucket = "${var.wafv2_bucket}"
    key    = "${var.wafv2_key}"
    region = "${var.wafv2_region}"
    encrypt = true
  }
}

