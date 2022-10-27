# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.36.1"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "xxx"
  secret_key = "xxx"
}

resource "aws_instance" "my-ec2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
}

# provider "azurerm" {}

