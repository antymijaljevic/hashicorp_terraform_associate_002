terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "AKIARWYDZBOLITV7A5EF"
  secret_key = "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"
}

resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}

output "name" {
  value = aws_iam_user.lb[*].name
}

output "all" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}