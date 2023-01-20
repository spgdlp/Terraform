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

resource "aws_iam_user" "my_iam_user" {
  name = "spgdlp"
}

output "my_aim_user_complete_details" {
  value = aws_iam_user.my_iam_user
}