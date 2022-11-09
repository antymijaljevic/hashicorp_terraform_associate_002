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

resource "aws_instance" "myec-1" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  tags = {
    Name = "myec-1"
  }
}

resource "aws_instance" "myec-2" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  tags = {
    Name = "myec-2"
  }
}