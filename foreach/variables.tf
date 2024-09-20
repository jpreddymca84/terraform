variable "instance_names" {
    type = map
    default ={
         mongodb = "t2.micro"
         redis = "t3.small"
         mysql = "t3.small"
         rabbitmq = "t2.micro"
         catalogue = "t2.micro"
         user = "t2.micro"
         cart = "t2.micro"
         shipping = "t2.micro"
         payment = "t2.micro"
         dispatch = "t2.micro"
         web = "t2.micro"
    }
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
    default = "Z03031552OD4F175DOVZY"
}

variable "domain_name" {
    default = "jpdaws.cloud"
}