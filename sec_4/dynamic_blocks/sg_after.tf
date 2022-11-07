# dynamic block for security group rules

resource "aws_security_group" "playground-sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = var.playground-sg-ports
    iterator = port
    content {
      # from_port   = ingress.value
      # to_port     = ingress.value
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.playground-sg-ports-egress
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  
  tags = {
    Name = "playground-sg"
  }
}
