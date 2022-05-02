terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider Block AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable 
variable "name_0" {
  description = "Name of the instance"
  default     = "terraform-example"
}

# variable block
variable
variable "name_1" {
  description = "Instance type"
  default     = "t2.micro"
}

# make variable
variable
variable "name_2" {
  description = "Name of the SSH keypair to use in AWS."
  default     = "terraform-example"
}

# create variable block
variablevariable "instance_data" {
  description = "Data to pass to instance"
  default     = "#!/bin/bash\necho ECS_CLUSTER=example-cluster >> /etc/ecs/ecs.config"
}

# Create Security Group
resource
aws_security_group" "terraform-example" {
  name        = "terraform-example"
  description = "Used in the terraform"
  vpc_id      = "${aws_vpc.terraform-example.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Security Group
resource
}

# Create EC2 Instance
resource
}

