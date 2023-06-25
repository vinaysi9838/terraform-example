variable "instance_type" {
  type = string
}


resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = var.instance_type
  tags = {
    Name = "first-tf-instance"
  }
}

output "instance_ip_addr" {
  value = aws_instance.web.public_ip
}
