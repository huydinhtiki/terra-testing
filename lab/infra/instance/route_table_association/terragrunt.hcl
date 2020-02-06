include {
  path = find_in_parent_folders()
}

dependency "route_table" {
  config_path = "../route_table"

  mock_outputs = {
    id = "{{dependency.route_table.outputs.id}}"
  }
  mock_outputs_allowed_terraform_commands = ["plan"]
}

dependency "subnet_public" {
  config_path = "../subnet_public"

  mock_outputs = {
    ids = ["{{dependency.subnet_public.outputs.id}}"]
  }
  mock_outputs_allowed_terraform_commands = ["plan"]
}

inputs = {
  subnet_public_ids = dependency.subnet_public.outputs.ids
  route_table_id = dependency.route_table.outputs.id
}