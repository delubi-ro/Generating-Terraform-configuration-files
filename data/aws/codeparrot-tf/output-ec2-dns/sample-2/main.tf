provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS block with region us east-1 region and default profile
provider "aws" {
  region  = "us-east-1"
}

# Create EC2 Instance with ami-0ff8a91507f77f867 and t2.micro/t2.micro instance
resource "aws_instance" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_type = "t2.micro"
}

# Output block, create public DNS URL from vm-public-ip
# This is a string used to create the public DNS zone for the instances.
#
# Note: This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This is currently only supported on AWS.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.
#
# This field MUST be set manually prior to creating the resource.

}

