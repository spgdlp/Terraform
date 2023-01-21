terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.27.0"
    }
  }
}
provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "spgdlp-s3-bucket-001"
}

resource "aws_s3_bucket_versioning" "L1_s3_bucket_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

output "my_s3_bucket_complete_details" {
  value = aws_s3_bucket_versioning.L1_s3_bucket_versioning
}