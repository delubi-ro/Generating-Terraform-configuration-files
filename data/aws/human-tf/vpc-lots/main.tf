terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    } 
  }
}

# Provider Block, region set to us east 1 and default profile
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Resource, an aws security group with the following ingress ports: 80, 443, 8080, 8081, 7080, 708
resource "aws_security_group" "name_0" {
  name        = "demo-regular"
  description = "demo-regular"

  ingress {
    description = "description 0"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "description 1"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "description 2"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "description 3"
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "description 4"
    from_port   = 7080
    to_port     = 7080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }      
  ingress {
    description = "description 5"
    from_port   = 7081
    to_port     = 7081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }      
}
