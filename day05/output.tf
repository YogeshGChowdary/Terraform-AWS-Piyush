output "bucket_name" {
  value = aws_s3_bucket.demo.bucket
}

output "bucket_arn" {
    description = "Arn of the s3 bucket"
    value = aws_s3_bucket.demo.arn
}

output "environment" {
  description = "environment from the input variable"
  value = var.environment
}

output "tags" {
  description = "tags from local machine"
  value = local.common_tags
}