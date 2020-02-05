terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_vpc" "core" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "test-core-vpc"
  }
}