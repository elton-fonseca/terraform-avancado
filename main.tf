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

# module "webservers" {
#   source = "github.com/treinaweb/terraform-module-webservers"

#   tipo_instancia = "t2.micro"
# }

# resource "aws_ebs_volume" "volume-website" {
#   availability_zone = "sa-east-1a"
#   size = 20

#   tags = {
#     Name = "Volume-website"
#   }
# }

# resource "aws_volume_attachment" "ligar-website-volume" {
#   device_name = "/dev/sdc"

#   volume_id = aws_ebs_volume.volume-website.id
#   instance_id = module.webservers.instancia_id
# }

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.0.1"

  bucket = "treinaweb-terraform-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
}