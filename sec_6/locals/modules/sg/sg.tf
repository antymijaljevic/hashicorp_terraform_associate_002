locals {
  app_port = 8443
  open = ["0.0.0.0/0"]
}


resource "aws_security_group" "ec2-sg" {
  name        = "myec2-sg"

  ingress {
    description      = "Allow Inbound from Secret Application"
    from_port        = local.app_port
    to_port          = local.app_port
    protocol         = "tcp"
    cidr_blocks      = local.open
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = local.open
  }
}

output "sg_id" {
  value = aws_security_group.ec2-sg.id
}