package terraform.security

deny contains msg if {
  resource := input.resource_changes[_]

  resource.type == "aws_s3_bucket"

  not bucket_encrypted(resource)

  msg := sprintf(
    "S3 bucket '%s' does not have encryption enabled",
    [resource.name]
  )
}

bucket_encrypted(resource) if {
  after := resource.change.after

  after.server_side_encryption_configuration.rule.apply_server_side_encryption_by_default.sse_algorithm
}
