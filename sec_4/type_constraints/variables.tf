variable "usernumber" {
  type = number
  default = "23323"
}

variable "name" {
  type = string
  default = "foobar-terraform-elb"
}

variable "availability_zones" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "idle" {
  type = number
  default = 400
}