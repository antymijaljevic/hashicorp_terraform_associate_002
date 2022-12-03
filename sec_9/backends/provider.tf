provider "aws" {
  region = "us-east-1"
}

# export AWS_ACCESS_KEY_ID="" && export AWS_SECRET_ACCESS_KEY=""
# https://github.com/antymijaljevic/terraform-cloud/blob/main/provider.tf

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}