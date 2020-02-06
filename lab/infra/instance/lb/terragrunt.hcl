include {
  path = find_in_parent_folders()
}

dependency "subnet_public" {
  config_path = "../subnet_public"

  mock_outputs = {
    subnets = "{{dependency.subnet_public.outputs.ids}}"
  }
}

dependency "s3_bucket_lb_log" {
  config_path = "../s3_bucket_lb_log"

  mock_outputs = {
    bucket = "{{dependency.s3_bucket_lb_log.outputs.bucket}}"
  }
}

inputs = {
  subnets = dependency.subnet_public.outputs.ids
  bucket = dependency.s3_bucket_lb_log.outputs.bucket
}