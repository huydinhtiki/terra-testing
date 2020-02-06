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

inputs = {
  vpc_id = dependency.vpc.outputs.id
}