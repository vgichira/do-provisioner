resource "aws_s3_bucket_versioning" "enabled" {
  bucket = var.bucket_id

  versioning_configuration {
    status = "Enabled"
  }
}