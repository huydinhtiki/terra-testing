include {
  path = find_in_parent_folders()
}

dependency "subnet_public" {
  config_path = "../subnet_public"

  mock_outputs = {
    ids = ["{{dependency.subnet_public.outputs.ids}}"]
  }
  mock_outputs_allowed_terraform_commands = ["plan"]
}

dependency "s3_bucket_lb_log" {
  config_path = "../s3_bucket_lb_log"

  mock_outputs = {
    bucket = "{{dependency.s3_bucket_lb_log.outputs.bucket}}"
  }
  mock_outputs_allowed_terraform_commands = ["plan"]
}

inputs = {
  subnets = dependency.subnet_public.outputs.ids
  bucket = dependency.s3_bucket_lb_log.outputs.bucket
}