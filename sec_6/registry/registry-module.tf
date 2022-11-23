provider "aws" {
  region     = "us-east-1"
  access_key = "x"
  secret_key = "x"
}



module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0b0dcb5067f052a63"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0f4577282deed32d7"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}