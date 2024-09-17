variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello Terraform"
        Project = "roboshop"
        Environment = "DEV"
        Component = "web"
        Terraform = "true"
    }
}

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