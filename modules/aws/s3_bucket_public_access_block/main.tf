resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = var.bucket_id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  count = var.block_public_access ? 1 : 0
}
