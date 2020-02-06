include {
  path = find_in_parent_folders()
}

dependency "vpc" {
  config_path = "../vpc"
}

dependency "internet_gateway" {
  config_path = "../internet_gateway"
}

#dependency "subnet_public" {
#  config_path = "../subnet_public"
#}

inputs = {
  vpc_id = dependency.vpc.outputs.id
  internet_gateway_id = dependency.internet_gateway.outputs.id
  # subnet_public_ids = dependency.subnet_public.outputs.ids
}