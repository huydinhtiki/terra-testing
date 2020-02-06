include {
  path = find_in_parent_folders()
}

dependency "vpc" {
  config_path = "../vpc"

  mock_outputs = {
    id = "{{dependency.vpc.outputs.id}}"
  }
  mock_outputs_allowed_terraform_commands = ["plan"]
}

dependency "internet_gateway" {
  config_path = "../internet_gateway"

  mock_outputs = {
    id = "{{dependency.internet_gateway.outputs.id}}"
  }
  mock_outputs_allowed_terraform_commands = ["plan"]
}

#dependency "subnet_public" {
#  config_path = "../subnet_public"
#}

inputs = {
  vpc_id = dependency.vpc.outputs.id
  internet_gateway_id = dependency.internet_gateway.outputs.id
  # subnet_public_ids = dependency.subnet_public.outputs.ids
}