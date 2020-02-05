terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_subnet" "public" {
  vpc_id = var.vpc_id
  cidr_block = "10.0.1.0/24"
}