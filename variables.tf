# variables.tf

variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Used to name and tag all resources"
  type        = string
  default     = "static-website"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
