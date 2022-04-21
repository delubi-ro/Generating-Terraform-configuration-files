terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS in region "us-east-1"
provider "aws" {
  region  = "us-east-1"
}

# Create Security Group that allows port 80, 443 inbound and all ports outbound
# This is a security group for the EC2 instances.
resource "aws_security_group" "name_0" {
  name        = "terraform_example_sg"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.default.id}"

  tags {
    Name = "terraform_example_sg"
  }
}

# Create EC2 Instance with ami set to ami-0915bcb5fa77e4892 and instance type t3.micro. Use vpc web security group id#
# The AMI ID is also the AMI ID as given in the AWS console.
#
# AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables wiring, do not modify.
#
# The AMI-specific variables w
}

