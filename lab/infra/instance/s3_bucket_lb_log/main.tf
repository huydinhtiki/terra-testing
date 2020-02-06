terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_s3_bucket" "core" {
  bucket = "huydinh-testing-lb-log" 
  acl = "private"

  tags = {
    Name = "huydinh-testing-lb-log"
  }
}