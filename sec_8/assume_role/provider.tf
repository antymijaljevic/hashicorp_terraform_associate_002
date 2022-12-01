provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::110297056082:role/s3FullRole"
  }
}

# export AWS_ACCESS_KEY_ID="" && export AWS_SECRET_ACCESS_KEY=""
