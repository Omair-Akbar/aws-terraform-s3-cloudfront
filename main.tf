# main.tf

module "cloudfront" {
  source = "./modules/cloudfront"

  project_name                = var.project_name
  environment                 = var.environment
  bucket_regional_domain_name = module.s3.bucket_regional_domain_name
}

module "s3" {
  source = "./modules/s3"

  project_name                = var.project_name
  environment                 = var.environment
  cloudfront_distribution_arn = module.cloudfront.distribution_arn
}

module "upload" {
  source = "./modules/upload"

  bucket_id = module.s3.bucket_id

  depends_on = [module.s3]
}
