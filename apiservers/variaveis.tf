variable "tipo_instancia" {
  description = "Define o tipo de instancia"
  type = string
  default = "t2.micro"
}

variable "quantidade_cpus" {
  description = "Define a quantidade CPUs de uma maquina"
  type = number
  default = 1
}

variable "plataformas" {
  description = "Define a plataforma do sistema operacional"
  type = list
  default = [ "windows" ]
}

variable "etiquetas" {
  description = "Define as tags de uma maquina virtual"
  type = map
  default = {
    Name = "ServidorSistemaAPI"
  }
}