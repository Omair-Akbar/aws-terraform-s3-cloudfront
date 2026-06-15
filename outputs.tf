# outputs.tf

output "cloudfront_url" {
  description = "Your website URL"
  value       = "https://${module.cloudfront.distribution_domain_name}"
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = module.s3.bucket_id
}

output "cloudfront_distribution_id" {
  description = "Use this to run cache invalidations after updating files"
  value       = module.cloudfront.distribution_id
}
