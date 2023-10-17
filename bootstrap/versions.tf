terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.21"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}