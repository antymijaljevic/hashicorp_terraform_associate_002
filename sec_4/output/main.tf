terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQMZRBKZA4BDIJYU6"
  secret_key = "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"
}

resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "names" {
  value = aws_iam_user.lb[*].name
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}