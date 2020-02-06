terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_lb" "core" {
  access_logs {
    bucket = var.bucket
  }
  subnets = var.subnets
}