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
#   description = "CIDR block for VPC"
# }

# Create variable "aws_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_vpc_id" {
#   description = "CIDR block for VPC"
# }

# Create variable "aws_internet_gateway_id" {
#   description = "Internet Gateway id"
# }

# Create variable "aws_route_table_private_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_route_table_public_id" {
#   description = "CIDR block for Route Table"
# }

# Create variable "aws_subnet_subnet_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_az_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_pub_ip" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_pub_ip_cidr_block" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_pub_ip_cidr_block_az" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_subnet_subnet_map_pub_ip_cidr_block_az_az" {
#   description = "CIDR block for Subnet"
# }

# Create variable "aws_security_group" {
#   description = "CIDR security group"
# }

# Create variable "aws_vpc_security_group_ids" {
#   description = "CIDR security group IDS"
# }

# Create variable "aws_internet_security_group_id" {
#   description = "Internet security group ID"
# }

# Create variable "aws_security_group_id_2" {
#   description = "Internet security group ID"
# }

# Create variable "aws_subnet_subnet_az_1" {
#   description = "CIDR block for AZ1"
# }

# Create variable "aws_subnet_subnet_az_2" {
#   description = "CIDR block for AZ2"
# }

# Create variable "aws_subnet_subnet_az_3" {
#   description = "CIDR block for AZ3"
# }

# Create variable "aws_subnet_subnet_az_4" {
#   description = "CIDR block for AZ4"
# }

# Create variable "aws_subnet_subnet_az_range_1" {
#   description = "CIDR block for AZ range 1"
# }

}

