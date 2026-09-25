resource "aws_instance" "web" {
  ami                    = "ami-0c55b159cbfafe1f0" # update to current
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  tags = { Name = "app-instance" }
}