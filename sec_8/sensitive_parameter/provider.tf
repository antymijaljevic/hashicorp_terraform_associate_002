provider "aws" {}
# export AWS_ACCESS_KEY_ID="" && export AWS_SECRET_ACCESS_KEY=""


locals {
  db_password = {
    admin = "password1234"
  }
}

output "show_pass" {
  value = local.db_password
  sensitive = true
}