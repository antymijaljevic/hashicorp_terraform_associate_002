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


variable "iftest" {
  type = bool
  default = true
}

resource "aws_instance" "dev" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  count = var.iftest == true ? 3 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  count = var.iftest == false ? 1 : 0
}
