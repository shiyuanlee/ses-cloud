module "website_s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"

  create_bucket = true
  bucket        = "ses-prod-pub-090909"

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets

  attach_policy = true
  policy        = data.aws_iam_policy_document.bucket_policy.json

  website = var.website

}

resource "null_resource" "remove_and_upload_to_s3" {
  provisioner "local-exec" {
    command = "aws s3 cp ${path.module}/../../../../../../Downloads/SES-Cloud-Homework-main/ s3://${module.website_s3_bucket.s3_bucket_id} --recursive"
  }
}