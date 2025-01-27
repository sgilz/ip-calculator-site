output "site_url" {
  value = aws_cloudfront_distribution.cf_endpoint.domain_name
}

output "s3_bucket" {
  value = aws_s3_bucket.bucket.id
}
