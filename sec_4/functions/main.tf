terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.36.1" # strict version
    }
  }
}

provider "aws" {
  profile = "default"
}

# https://developer.hashicorp.com/terraform/language/functions
/*
TERRAFORM FUNCTIONS
* Numeric functions
* String functions
* Collection functions
* Encoding functions
* Filesystem functions
* IP and network functions
* Date and time functions
* Type conversion functions
* Hash and Crypto functions
*/


variable "region" {
  type = string
  default = "us-east-1"
}

variable "ami" {
  type  = map
  default = {
    us-east-1 = "ami-09d3b3274b6c5d4aa"
    us-west-2 = "ami-0b2b2b4b4b4b4b4b4"
  }
}

variable "tags" {
  type = list
  default = ["firstec2", "secondec2"]
}

resource "aws_key_pair" "my-login-key" {
  key_name   = "my-login-key"
  public_key = file("./id_rsa.pub") # file("${path.module}/id_rsa.pub")
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

output "timestamp" {
  value = local.time
}

resource "aws_instance" "app-dev" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  key_name = aws_key_pair.my-login-key.key_name
  count = 2

  tags = {
    Name = element(var.tags, count.index)
  }
}