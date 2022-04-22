resource "aws_instance" "api_server" {
  ami           = data.aws_ami.windows.id
  instance_type = var.tipo_instancia
  cpu_core_count = var.quantidade_cpus

  tags = {
    Name = var.etiquetas["Name"]
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