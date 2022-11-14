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


resource "aws_iam_user" "iam" {
  for_each = toset(["user-00", "user-01", "user-01", "user-02", "user-03", "user-04", "user-04"])
  name     = each.key
}

resource "aws_instance" "myec2" {
  for_each = {
    "ami-09d3b3274b6c5d4aa" = "t2.micro"
    "ami-081dc0707789c2daf" = "t4g.small"
  }

  ami           = each.key
  instance_type = each.value

  tags = {
    Name = each.key
  }
}
