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

output "my_s3_bucket_complete_details" {
  value = aws_s3_bucket.my_s3_bucket
}