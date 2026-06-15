# modules/cloudfront/variables.tf

variable "project_name" {
  description = "Used to name the CloudFront distribution and OAC"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "bucket_regional_domain_name" {
  description = "Regional S3 domain name used as the CloudFront origin"
  type        = string
}
