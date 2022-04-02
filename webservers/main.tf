resource "aws_instance" "web_server" {
  ami           = "ami-0792f512117871b0b"
  instance_type = var.tipo_instancia
  availability_zone = "sa-east-1a"

  tags = {
    Name = "ServidorSistemaWeb"
  }
}
