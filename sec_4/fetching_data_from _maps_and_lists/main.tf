terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1" # strict version
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAS62R2AEN5XAME3FL"
  secret_key = "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"
}

resource "aws_instance" "my-ec2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
}