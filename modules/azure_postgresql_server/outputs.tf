output "postgresql_server_fqdn" {
  description = "The FQDN of the PostgreSQL server"
  value       = azurerm_postgresql_server.server.fqdn
}

output "postgresql_server_name" {
  description = "The name of the PostgreSQL server"
  value       = var.name
}
