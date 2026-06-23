output "id" {
  description = "The ID of the PostgreSQL flexible server database."
  value       = azurerm_postgresql_flexible_server_database.pgfsdb.id
}

output "name" {
  description = "The name of the PostgreSQL flexible server database."
  value       = azurerm_postgresql_flexible_server_database.pgfsdb.name
}
