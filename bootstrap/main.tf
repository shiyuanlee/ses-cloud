resource "aws_s3_bucket" "ses-prod-tfstate-ap-southeast-1" {
  bucket = "ses-prod-tfstate-ap-southeast-1"
}

resource "aws_dynamodb_table" "terraform-lock" {
  name           = "ses-prod-tfstate-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "DynamoDB Terraform state lock table"
  }
}