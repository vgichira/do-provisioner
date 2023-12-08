module "s3_bucket" {
  source          = "../../modules/aws/s3_bucket"
  bucket_name     = "production-terraform-state-bkt"
}

module "s3_bucket_versioning" {
  source    = "../../modules/aws/s3_bucket_versioning"
  bucket_id = module.s3_bucket.id
}

module "s3_bucket_server_side_encryption_config" {
  source                        = "../../modules/aws/s3_bucket_server_side_encryption_config"
  bucket_id                     = module.s3_bucket.id
  enable_server_side_encryption = true
}

module "s3_bucket_public_access_block" {
  source              = "../../modules/aws/s3_bucket_public_access_block"
  bucket_id           = module.s3_bucket.id
  block_public_access = true
}

module "dynamodb_table" {
  source     = "../../modules/aws/dynamodb_table"
  table_name = "production-terraform-state-locks"
}
