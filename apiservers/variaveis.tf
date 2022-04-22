variable "tipo_instancia" {
  description = "Define o tipo de instancia"
  type = string
  default = "nano"
}

variable "quantidade_cpus" {
  description = "Define a quantidade CPUs de uma maquina"
  type = number
  default = 7
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
    Projeto = "rh"
  }
}

variable "pegar_senha" {
  description = "Define se pegará senha ou não"
  type = bool
  default = true
}

variable "is_nano" {
  description = "define se o tipo de instancia é uma nano"
  type = bool
  default = false
}