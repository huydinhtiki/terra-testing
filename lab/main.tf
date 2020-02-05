terraform {
  backend "s3" {
    bucket = "huydinh-testing-lab"
    key    = "lab/terraform.tfstate"
    region = "ap-southeast-1"
  }
}