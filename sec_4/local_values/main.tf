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


locals {
  default_name  = "dev-unknown"
  name          = ""
  instance_name = local.name != "" ? local.name : local.default_name
  common_tags = {
    Name = local.instance_name
    Owner   = "DevOps Team"
    Service = "BackEnd"
  }
}


resource "aws_instance" "app_dev" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_instance" "db_dev" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "db-ebs" {
  availability_zone = "us-east-1a"
  size              = 8
  tags              = local.common_tags
}
