variable "enable_server_side_encryption" {
  type = bool
  description = "Boolean to enable/disable S3 bucket server side encryption"
}

variable "bucket_id" {
  type = string
  description = "Bucket ID for S3 bucket to enable versioning"
}