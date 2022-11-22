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
  access_key = "x"
  secret_key = "x"
}

# resource "aws_eip" "lb" {
#   vpc = true

#   depends_on = [null_resource.health_check]
# }

# resource "null_resource" "health_check" {

#   provisioner "local-exec" {
#     command = "curl https://aaaaa222google.com"
#   }
# }