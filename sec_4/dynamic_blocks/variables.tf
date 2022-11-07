variable "playground-sg-ports" {
  type    = list(number)
  default = [8200, 8201, 8300, 4000, 5000]
}

variable "playground-sg-ports-egress" {
  type    = list(number)
  default = [22, 21, 19, 18, 17]
}