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
  access_key = "AKIAQZAAT47DSJ7TTAU6"
  secret_key = "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"
}