resource "azurerm_postgresql_server" "server" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name                     = var.sku_name
  storage_mb                   = var.storage_mb
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  auto_grow_enabled            = var.auto_grow_enabled

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  version                      = var.server_version
  ssl_enforcement_enabled      = var.ssl_enforcement_enabled
}
