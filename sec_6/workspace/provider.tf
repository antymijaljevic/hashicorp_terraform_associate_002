provider "aws" {
  region = "us-east-1"
}

# export AWS_ACCESS_KEY_ID=
# export AWS_SECRET_ACCESS_KEY=
# export AWS_DEFAULT_REGION="us-east-1"

resource "aws_instance" "myec2" {
   ami = "ami-08c40ec9ead489470"
   instance_type = lookup(var.instance_type,terraform.workspace)
}

variable "instance_type" {
  type = map(string)

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.small"
  }
}