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

resource "aws_instance" "my-ec2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  # instance_type = var.types["us-west-2"]
  instance_type = var.lists[0]
}

variable "lists" {
  type    = list(any)
  default = ["t2.micro", "t2.small"]
}

variable "types" {
  type = map(any)
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.small"
  }
}
