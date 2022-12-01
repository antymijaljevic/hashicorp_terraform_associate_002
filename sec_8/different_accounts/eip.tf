resource "aws_eip" "myip_1" {
  vpc = true
}

resource "aws_eip" "myip_2" {
  vpc = true
  provider =  aws.dev
}
