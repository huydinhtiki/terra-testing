remote_state {
  backend = "s3" 
  config = {
    bucket = "huydinh-testing-lab"
    key    = "lab/${path_relative_to_include()}/terraform.tfstate"
    region = "ap-southeast-1"
  }
}