terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

locals {
  availability_zones = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

resource "aws_subnet" "public" {
  count = 2
  vpc_id = var.vpc_id
  availability_zone = local.availability_zones[count.index]
  cidr_block = "10.0.${count.index}.0/24"
}

#availability_zone = ["ap-southeast-1a, ap-southeast-1b"]