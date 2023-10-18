terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.21"
    }
  }

  backend "s3" {
    encrypt        = true
    bucket         = "ses-prod-tfstate-ap-southeast-1"
    key            = "storage/s3/terraform.tfstate"
    dynamodb_table = "ses-prod-tfstate-lock"
    region         = "ap-southeast-1"
  }

}

provider "aws" {
  region = "ap-southeast-1"
}