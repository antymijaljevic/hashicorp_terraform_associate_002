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
  access_key = "AKIAWLYCUPIVP5RS2Y7I"
  secret_key = "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"
}


variable "iam_names" { # receive only unique values
  type = set(string)
  default = ["user-01",  "user-01", "user-02", "user-03", "user-04", "user-04"]
}

output "names" {
  value = var.iam_names
}


// toset(["a", "b", "c", "c"]) # returns ["a", "b", "c"]