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

# create customer gateway with bgp asn 65000, use ip address 172.0.0.1 and type ipsec.1
resource "aws_internet_gateway" "name_0" {
  vpc_id = "${aws_vpc.default.id}"
  tags {
    Name = "terraform-example-terraform-example-com"
  }
}

