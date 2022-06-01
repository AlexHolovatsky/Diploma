resource "aws_instance" "ec2" {
  ami           = "ami-0d37e07bd4ff37148"
  instance_type = "t2.micro"

  vpc_security_group_ids      = [aws_security_group.web.id]
  subnet_id                   = var.public-subnet_id-1
  associate_public_ip_address = true

  user_data = file("files/userdata.sh")

  tags = {
    Name = "EC2 Instance"
  }


  timeouts {
    create = "20m"
  }
}
