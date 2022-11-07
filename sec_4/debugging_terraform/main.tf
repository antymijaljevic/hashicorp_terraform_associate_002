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
  access_key = "AKIAQZAAT47DSJ7TTAU6"
  secret_key = "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"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}

resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}
