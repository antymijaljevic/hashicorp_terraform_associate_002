variable "env" {
  type = map(any)
  default = {
    prod = {
      ip = "10.0.150.0/24"
      az = "us-east-1a"
    }
    dev = {
      ip = "10.0.250.0/24"
      az = "us-east-1e"
    }
  }
}

resource "aws_instance" "example" {
  for_each = var.env

  # Use the current key and value from the for_each loop to set the name and IP
  # address for the instance
  name = each.key
  private_ip = each.value.ip

  # Other resource properties
  instance_type = "t2.micro"
  ami           = "ami-123456"
}