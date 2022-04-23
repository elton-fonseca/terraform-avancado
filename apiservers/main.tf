terraform {
  required_version = ">= 1.1.7"
}

locals {
  tipo_instancia = "t2.${var.tipo_instancia}"
}

resource "aws_instance" "api_server1" {
  ami           = data.aws_ami.windows.id
  instance_type = local.tipo_instancia != "" ? local.tipo_instancia : "t2.micro"
  cpu_core_count = max(1, var.quantidade_cpus)
  get_password_data = var.pegar_senha

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