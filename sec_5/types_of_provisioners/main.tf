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

# https://developer.hashicorp.com/terraform/language/resources/provisioners/syntax
# resource "aws_instance" "my_ec2" {
#   ami           = "ami-0c2b8ca1dad447f8a"
#   instance_type = "t2.micro"
#   associate_public_ip_address = true
#   key_name = "demo"
#   vpc_security_group_ids = [ "sg-0bf2c9bac380549af" ]

#   tags = {
#     Name = "my_ec2"
#   }

#   connection {
#     type = "ssh"
#     user = "ec2-user"
#     host = self.public_ip
#     private_key = file("./demo.pem")
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo amazon-linux-extras install nginx1 -y",
#       "sudo systemctl start nginx",
#     ]
#   }
# }


resource "aws_instance" "my_new_ec2" {
  ami                         = "ami-0c2b8ca1dad447f8a"
  instance_type               = "t2.micro"
  associate_public_ip_address = true

  provisioner "local-exec" {
     command = "echo ${self.private_ip} > ip.txt"
 
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> ip.txt"
  }
}
