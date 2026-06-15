# modules/cloudfront/outputs.tf

output "distribution_arn" {
  description = "Used by the S3 bucket policy to lock access to this distribution only"
  value       = aws_cloudfront_distribution.website.arn
}

output "distribution_domain_name" {
  description = "The public CloudFront URL for your website"
  value       = aws_cloudfront_distribution.website.domain_name
}

output "distribution_id" {
  description = "Used to run cache invalidations after updating website files"
  value       = aws_cloudfront_distribution.website.id
}
