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

resource "aws_eip" "my-eip" {
  vpc = true
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.my-ec2.id
  allocation_id = aws_eip.my-eip.id
}

resource "aws_security_group" "my-sg" {
  name = "my-sg"
  
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}
