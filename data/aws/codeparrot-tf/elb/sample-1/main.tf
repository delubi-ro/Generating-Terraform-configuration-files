terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Provider block with AWS in us-east-1 region and default profile
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resource, create AWS ELB that listens for instance port 80 and lb port 80
resource "aws_elb" "name_0" {
  name            = "elb-http-${var.aws_region}"
  subnets         = ["${split(",", var.aws_subnet_ids)}"]
  security_groups = ["${split(",", var.aws_security_groups)}"]
  idle_timeout    = 3600
  connection_draining = true
  connection_draining_timeout = 300

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  tags = "${merge(map(
      "Name", "${var.aws_region}-elb-http",
      "kubernetes.io/cluster/${var.aws_cluster_name}", "owned",
      "tectonicClusterID", "${var.aws_cluster_id}"
    ), var.aws_extra_tags)}"
}

