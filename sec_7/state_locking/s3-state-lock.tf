# https://developer.hashicorp.com/terraform/language/settings/backends/s3

terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backend-888"
    key    = "network/demo.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-locking" # Partition key LockID (String)
  }
}