
# optional block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

# mandatory block
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA22RC3YCYPM2JAV7C"
  secret_key = "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"
}