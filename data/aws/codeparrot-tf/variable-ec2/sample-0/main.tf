terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_type with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_type with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_type with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_type with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_type with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }

# Create variable called ec2_type with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_type" {
#   default = "t2.micro"
# }

# Create variable called ec2_ami_id with default ami-0915bcb5fa77e4892 and type string/string
# variable "aws_ami_id" {
#   default = "ami-0915bcb5fa77e4892"
# }


}

# variable called ec2_instance_count which is number type with default 1
}

# Create EC2 Instance with ami set to var.ec2_ami_id, count as var.ec2_instance_count and instance type t3.micro
}

