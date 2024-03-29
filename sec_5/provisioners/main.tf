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
  access_key = "AKIA6NV6MXMSV6ER247C"
  secret_key = "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"
}

# https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax
resource "aws_instance" "my_ec2" {
  ami           = "ami-0c2b8ca1dad447f8a"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.my_ec2.public_ip} > ip_address.txt"
  }
}