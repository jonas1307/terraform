output "app_service_default_hostname" {
  value = module.azure_app_service.app_service_default_hostname
}

output "postgresql_server_fqdn" {
  value = module.azure_postgresql_server.postgresql_server_fqdn
}
