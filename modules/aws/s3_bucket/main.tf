resource "aws_s3_bucket" "terraform_state" {
  bucket = var.bucket_name

  lifecycle {
    create_before_destroy = true
    prevent_destroy = true
  }
}
