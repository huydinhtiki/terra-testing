terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_lb_target_group" core {
  target_type = "instance"
  port = 80
  protocol = "TCP"
  vpc_id = var.vpc_ip
}