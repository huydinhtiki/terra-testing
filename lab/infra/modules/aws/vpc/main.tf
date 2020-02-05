terraform {
  required_version = "~> 0.12.6"
}

provider "aws" {
  version = "~> 2.0"
  region = "us-east-1"
}

resource "aws_vpc" "core" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "core-vpc"
  }
}