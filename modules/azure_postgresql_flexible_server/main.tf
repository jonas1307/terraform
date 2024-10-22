resource "azurerm_postgresql_flexible_server" "pgfs" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = var.server_version
  public_network_access_enabled = var.public_network_access_enabled
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password

  storage_mb   = var.storage_mb
  storage_tier = var.storage_tier
  sku_name     = var.sku_name
}
