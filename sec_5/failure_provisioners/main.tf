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
  access_key = "AKIA6DWPLO52TEOZSSRI"
  secret_key = "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"
}

resource "aws_instance" "my_new_ec2" {
  ami                         = "ami-0c2b8ca1dad447f8a"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = ["sg-0bfd545d21dfe1672"]

  provisioner "local-exec" {
    command    = "ifconssfig > network.txt"
    on_failure = continue
  }
}
