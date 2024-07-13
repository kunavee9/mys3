variable "aws_access_key" {
  description = "Access key to be created"
}

variable "aws_secret_key" {
  description = "Access key to be created"
}

variable "ingress_ports"{
  type = list(number)
  default = [443,22,8080,9090]
}

variable "egress_ports"{
  type = list(number)
  default = [7000,8000,9292,8282]
}
  
 
