resource "aws_security_group" "roboshop-all" {
    name        = var.sg-name
    description = "Allow TLS inbound traffic and all outbound traffic"
    #vpc_id      = aws_vpc.main.id

    ingress {
        description      = "Allow all ports"
        from_port        = var.inbound-front-port
        to_port          = 0
        protocol         = "tcp"
        cidr_blocks      = var.cidir-blocks
        #ipv6_cidr_blocks = ["::/0"]

    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "roboshop-all-aws"
    }

}