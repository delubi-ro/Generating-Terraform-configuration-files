terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider AWS security group
# IAM Role: Allow the Terraform AWS Service Agent the ability to perform other security groups (e.g. ECS instances)
resource "aws_security_group" "name_0" {
  name        = "ec2demo"
  description = "Allow the Terraform AWS Service Agent the ability to perform other security groups (e.g. ECS instances) to access other AWS services"
  vpc_id      = "${aws_vpc.main.id}"

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

# create a workspace ip group
}

