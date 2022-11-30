resource "aws_instance" "my_server" {
  ami                    = "ami-0b0dcb5067f052a63"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0d1beef87b2462b55"]
  tags = {
    Name = "my-server-new"
  }
}
