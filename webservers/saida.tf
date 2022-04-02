output "instancia_id" {
    value = aws_instance.web_server.id
    description = "Id da instancia webserver"
}