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

# resource "aws_instance" "instance" {
#   ami           = "ami-09d3b3274b6c5d4aa"
#   instance_type = "t2.micro"
#   count = 3
# }


# resource "aws_iam_user" "lb" {
#   name = "loadbalancer-${count.index}"
#   count = 5
#   path = "/system/"
# }

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}

variable "elb_names" {
  type = list(string)
  default = ["elb-dev", "elb-staging", "elb-prod"]
}