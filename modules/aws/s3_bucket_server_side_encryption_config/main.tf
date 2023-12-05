resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = var.bucket_id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }

  count = var.enable_server_side_encryption ? 1 : 0
}
