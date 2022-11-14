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
  access_key = "AKIAWLYCUPIVP5RS2Y7I"
  secret_key = "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"
}

variable "iam_names" { # user-0 is added afterwards
  type = list(string)
  default = ["user-0", "user-01", "user-02", "user-03", "user-04"]
}

resource "aws_iam_user" "iam" {
  name = var.iam_names[count.index]
  count = 5
  path = "/system/"
}