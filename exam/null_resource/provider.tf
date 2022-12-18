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
}

# export AWS_ACCESS_KEY_ID="" && export AWS_SECRET_ACCESS_KEY=""

resource "null_resource" "demo" {
    provisioner "local-exec" {
        command = "echo Hi"
    }
}  
