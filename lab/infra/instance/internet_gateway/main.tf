terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_internet_gateway" "public" {
  vpc_id = var.vpc_id
}