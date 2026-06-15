# modules/upload/outputs.tf

output "uploaded_files" {
  description = "Keys of uploaded files in S3"
  value = [
    aws_s3_object.html.key,
    aws_s3_object.css.key,
    aws_s3_object.js.key,
  ]
}
