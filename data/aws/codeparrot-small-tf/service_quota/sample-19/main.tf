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

# create a service quota resource. Use quota code "L-F678F1CE" and service code "vpc". Use value 75 to create the service quota resource.
resource "aws_service_quota" "name_0" {
  service_name = "service-quota"
  #value = "75"
  #value_type = "service"
  #value_unit = "GiB"
  #value_value = "10"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch = true
  #value_type = "service"
  #value_propagate_at_launch
}

