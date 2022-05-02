provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Provider block AWS
provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

# Resource block with an EC2 instanceresource
resource "aws_instanceresource" "name_0" {
  ami           = "ami-0ff8a91507f77f867" 
  instance_id = "${aws_instance.ec2demo.id}"
  vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
}

# Time sleep resource block
resource "aws_cloudwatch_event_rule" "name_1" {
  name                = "wait_for_ec2_instance_propagation"
  description         = "Waits for EC2 instance to propagate to EC2 instance-id"
  schedule_expression = "cron(0/5 20)"
}

