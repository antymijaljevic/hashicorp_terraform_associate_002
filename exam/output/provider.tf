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


resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami           = "ami-0b5eea76982371e91"
}

output "instance_ip_addr" {
  value = aws_instance.example.private_ip
}



# terraform state show aws_instance.example
# terraform output instance_ip_addr