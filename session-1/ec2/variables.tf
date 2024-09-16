variable "sg-name" {
    type = string
    default = "roboshop-all-aws"
}

variable "inbound-front-port" {
    type = number
    default = 0
}

variable "cidir-blocks" {
    type = list
    default = ["0.0.0.0/0"]
}