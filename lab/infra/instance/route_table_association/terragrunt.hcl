include {
  path = find_in_parent_folders()
}

dependency "route_table" {
  config_path = "../route_table"
}

dependency "subnet_public" {
  config_path = "../subnet_public"
}

inputs = {
  subnet_public_ids = dependency.subnet_public.outputs.ids
  route_table_id = dependency.route_table.outputs.id
}