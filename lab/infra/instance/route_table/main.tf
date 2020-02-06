terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_route_table" "core" {
  #count      = length(var.subnet_public_ids)

  vpc_id     = var.vpc_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }
}
