
# optional block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

# mandatory block
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "myec2" {
   ami = "ami-0b0dcb5067f052a63"
   instance_type = "t2.micro"
}

# terraform workspace show
# terraform workspace new dev