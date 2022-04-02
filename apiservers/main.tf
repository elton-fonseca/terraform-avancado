resource "aws_instance" "api_server" {
  ami           = data.aws_ami.windows.id
  instance_type = var.tipo_instancia

  tags = {
    Name = "ServidorSistemaAPI"
  }
}

data "aws_ami" "windows" {
  most_recent = true
  owners = [ "amazon", "aws-marketplace", "self" ]

  filter {
    name = "platform"
    values = [ "windows" ]
  }
}