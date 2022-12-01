provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "dev"
  profile = "dev"
}


# export AWS_ACCESS_KEY_ID="" && export AWS_SECRET_ACCESS_KEY=""
