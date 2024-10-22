output "app_service_default_hostname" {
  value = module.azure_app_service.app_service_default_hostname
}

output "sql_server_fqdn" {
  value = module.azure_mssql_server.sql_server_fqdn
}
