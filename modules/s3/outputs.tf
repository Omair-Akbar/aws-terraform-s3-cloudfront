# modules/s3/outputs.tf

output "bucket_id" {
  description = "S3 bucket name — used by the upload module"
  value       = aws_s3_bucket.website.id
}

output "bucket_arn" {
  description = "S3 bucket ARN"
  value       = aws_s3_bucket.website.arn
}

output "bucket_regional_domain_name" {
  description = "Regional S3 endpoint — used by CloudFront as the origin"
  value       = aws_s3_bucket.website.bucket_regional_domain_name
}
