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
  access_key = "x"
  secret_key = "x"
}