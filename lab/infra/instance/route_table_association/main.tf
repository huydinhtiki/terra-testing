terraform {
  backend "s3" {}
}

provider "aws" {
  version = "~> 2.0"
}

resource "aws_route_table_association" "core" {
  count          = length(var.subnet_public_ids)

  subnet_id      = element(var.subnet_public_ids, count.index)
  route_table_id = var.route_table_id
}