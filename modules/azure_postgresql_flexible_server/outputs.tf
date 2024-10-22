output "fqdn" {
  description = "The FQDN of the PostgreSQL flexible server"
  value       = azurerm_postgresql_flexible_server.pgfs.fqdn
}

output "name" {
  description = "The name of the PostgreSQL flexible server"
  value       = var.name
}

output "id" {
  description = "The ID of the PostgreSQL flexible server"
  value       = azurerm_postgresql_flexible_server.pgfs.id
}
