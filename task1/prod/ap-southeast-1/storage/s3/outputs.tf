output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = module.website_s3_bucket.s3_bucket_id
}

output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.website_s3_bucket.s3_bucket_arn
}

output "s3_bucket_website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = module.website_s3_bucket.s3_bucket_website_endpoint
}