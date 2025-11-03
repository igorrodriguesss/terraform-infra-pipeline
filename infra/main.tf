resource "aws_s3_bucket" "bucket_prod" {
    bucket = var.bucket_name
}