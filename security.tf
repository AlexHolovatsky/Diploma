provider "aws" {
  region = var.aws_reg
}
resource aws_security_group "web" {
  name        = "${var.stack}-webSG"
  description = "This is for ${var.stack}s web servers security group"
  vpc_id      = var.vpc

  tags = {
    Name = "${var.stack}-webSG"
  }

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol    = "icmp"
    from_port   = -1
    to_port     = -1
    cidr_blocks = var.vpc-cidr
  }

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

    egress {
    protocol    = "tcp"
    from_port   = 10050
    to_port     = 10050
    cidr_blocks = ["0.0.0.0/0"]
  }

    egress {
    protocol    = "tcp"
    from_port   = 10051
    to_port     = 10051
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    protocol    = "tcp"
    from_port   = 10050
    to_port     = 10050
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    protocol    = "tcp"
    from_port   = 10051
    to_port     = 10051
    cidr_blocks = ["0.0.0.0/0"]
  }
}
