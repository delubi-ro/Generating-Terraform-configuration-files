terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Create variable "aws_access_key" {
#   description = "AWS access key"
# }

# Create variable "aws_secret_key" {
#   description = "AWS secret key"
# }

# Create variable "aws_region" {
#   description = "AWS region"
# }

# Create variable "aws_availability_zones" {
#   description = "AWS availability zones list separated by ','"
# }

# Create variable "aws_vpc_cidr_block" {
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR Block for VPC"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway for AWS"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR Block for Private Subnet"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR Block for Public Subnet"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_public_id" {
#   description = "CIDR Block for Public Subnet"
# }

# Create variable "aws_subnet_subnet_map_public_cidr_block" {
#   description = "CIDR Block for Public Subnet"
# }

# Create variable "aws_subnet_subnet_map_private_cidr_block" {
#   description = "CIDR Block for Private Subnet"
# }

# Create variable "aws_subnet_subnet_map_private_az_block" {
#   description = "CIDR Block for Private Subnet"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_internet_gateway_security_group_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_route_table_security_group_id" {
#   description = "CIDR Block for VPC Route Table"
# }

# Create variable "aws_route_table_subnet_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_route_table_subnet_az_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_cidr_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_az_block" {
#   description = "CIDR Block for Subnet"
# }

# Create variable "aws_security_group_rule_ids" {
#   description = "CIDR Block for VPC Security Groups"
# }

# Create variable "aws_security_group_id" {
#   description = "
}

