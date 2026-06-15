# modules/s3/variables.tf

variable "project_name" {
  description = "Used to name the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "cloudfront_distribution_arn" {
  description = "ARN of the CloudFront distribution allowed to access this bucket"
  type        = string
}
