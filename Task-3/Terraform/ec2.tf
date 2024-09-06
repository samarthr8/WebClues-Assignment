resource "aws_instance" "web" {
  ami                          = "ami-0a0e5d9c7acc336f1"
  instance_type                = "t2.micro"
  key_name                     = "demo-key"					# Mention you keypair name
  security_groups              = [aws_security_group.webclues-sg.id]			
  subnet_id                    = aws_subnet.public1.id
  associate_public_ip_address  = true

  tags = {
    Name = "nginx-web-server"
  }
}

