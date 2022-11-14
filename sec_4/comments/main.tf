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

# this is first instance
resource "aws_instance" "myec-1" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  tags = {
    Name = "myec-1"
  }
}

// this is second instance
resource "aws_instance" "myec-2" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"
  tags = {
    Name = "myec-2"
  }
}

/* 
  this is somehting
  this is something
  this is something
*/