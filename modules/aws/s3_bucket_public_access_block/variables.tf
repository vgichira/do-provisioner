variable "bucket_id" {
  type = string
  description = "Bucket ID for S3 bucket to enable versioning"
}

variable "block_public_access" {
  type = bool
  description = "Boolean to determine whether to block public access of the S3 bucket"
}
