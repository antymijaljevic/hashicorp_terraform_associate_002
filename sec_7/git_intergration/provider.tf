provider "aws" {}
# export AWS_SECRET_ACCESS_KEY= && export AWS_ACCESS_KEY_ID=

# https://developer.hashicorp.com/terraform/language/modules/sources 
module "demo" {
    source = "git::https://github.com/zealvora/tmp-repo.git"
}

# module "demo" {
#     source = "github.com/zealvora/tmp-repo.git"
# }

# module "demo" {
#     source = "git::https://github.com/zealvora/tmp-repo.git?ref=dev"
# }

# module "demo" {
#     source = "git::https://github.com/zealvora/tmp-repo.git?ref=v1.0.0"
# }