resource "aws_instance" "example" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  key_name        = var.key_name
  security_groups = [var.security_group_id]

  tags = {
    Name = "ExampleInstance-1"
  }
}
