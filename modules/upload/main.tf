# modules/upload/main.tf

resource "aws_s3_object" "html" {
  bucket       = var.bucket_id
  key          = "index.html"
  source       = "${path.root}/website/index.html"
  content_type = "text/html"
  etag         = filemd5("${path.root}/website/index.html")
}

resource "aws_s3_object" "css" {
  bucket       = var.bucket_id
  key          = "style.css"
  source       = "${path.root}/website/style.css"
  content_type = "text/css"
  etag         = filemd5("${path.root}/website/style.css")
}

resource "aws_s3_object" "js" {
  bucket       = var.bucket_id
  key          = "app.js"
  source       = "${path.root}/website/app.js"
  content_type = "application/javascript"
  etag         = filemd5("${path.root}/website/app.js")
}
