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
  access_key = "x"
  secret_key = "x"
}


#########################################################

resource "aws_eip" "lb" {
  vpc = true
}

resource "aws_s3_bucket" "mys3" {
  bucket = "anty-testlab"
}

output "eip-public-ip" {
  value = aws_eip.lb.public_ip
}

output "s3-public-ip" {
  value = aws_s3_bucket.mys3.bucket
}

output "s3-region" {
  value = aws_s3_bucket.mys3.region
}


# will show all attributes of the resource
output "eip-all-info" {
  value = aws_eip.lb
}