resource "aws_instance" "web" {
  ami                    = "ami-0fef201115eefe936" # update to current
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public.id
  key_name               = "aws-terraform-key"
  vpc_security_group_ids = [aws_security_group.instance_sg.id]
  tags                   = { Name = "app-instance" }
}
