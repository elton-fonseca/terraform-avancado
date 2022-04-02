output "ola_mundo" {
  value = "Olá Treinaweb!"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

module "webservers" {
  source = "./webservers"

  tipo_instancia = "t2.micro"
}

module "apiservers" {
  source = "./apiservers"
}