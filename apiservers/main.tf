resource "aws_instance" "api_server" {
  ami           = "ami-0792f512117871b0b"
  instance_type = var.tipo_instancia

  tags = {
    Name = "ServidorSistemaAPI"
  }
}

resource "aws_instance" "api_server1" {
  ami           = "ami-0792f512117871b0b"
  instance_type = var.tipo_instancia

  tags = {
    Name = "ServidorSistemaAPI1"
  }
}