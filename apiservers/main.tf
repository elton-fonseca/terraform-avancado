terraform {
  required_version = ">= 1.1.7"
}

locals {
  tipo_instancia = "t2.${var.tipo_instancia}"
}

resource "aws_instance" "api_server1" {
  ami           = "ami-0792f512117871b0b"
  instance_type = local.tipo_instancia != "" ? local.tipo_instancia : "t2.micro"

  tags = {
    for chave, valor in var.etiquetas : chave => upper(valor)
  }
}

data "aws_ami" "windows" {
  most_recent = true
  owners = [ "amazon", "aws-marketplace", "self" ]

  filter {
    name = "platform"
    values = [ var.plataformas[0] ]
  }
}