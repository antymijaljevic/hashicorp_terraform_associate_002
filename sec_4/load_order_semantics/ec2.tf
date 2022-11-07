resource "aws_instance" "my-ec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.type-of-machine
}

resource "aws_instance" "new-ec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.type-of-machine
}