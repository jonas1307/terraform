provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}

module "azure_resource_group" {
  source = "./modules/azure_resource_group"

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
}

module "azure_service_plan" {
  source              = "./modules/azure_service_plan"

  name                = var.service_plan_name
  location            = module.azure_resource_group.resource_group_location
  resource_group_name = module.azure_resource_group.resource_group_name
  sku_name            = var.service_plan_sku_name
  os_type             = var.service_plan_os_type
}

module "azure_app_service" {
  source              = "./modules/azure_app_service"

  name                   = var.app_service_name
  location               = module.azure_resource_group.resource_group_location
  resource_group_name    = module.azure_resource_group.resource_group_name
  service_plan_id        = module.azure_service_plan.service_plan_id
  aspnetcore_environment = var.app_service_aspnetcore_environment
}

module "azure_postgresql_flexible_server" {
  source                        = "./modules/azure_postgresql_flexible_server"

  name                          = var.postgresql_flexible_server_name
  resource_group_name           = module.azure_resource_group.resource_group_name
  location                      = module.azure_resource_group.resource_group_location
  server_version                = var.postgresql_flexible_server_server_version
  public_network_access_enabled = var.postgresql_flexible_server_public_network_access_enabled
  administrator_login           = var.postgresql_flexible_server_administrator_login
  administrator_password        = var.postgresql_flexible_server_administrator_password
  storage_mb                    = var.postgresql_flexible_server_storage_mb
  storage_tier                  = var.postgresql_flexible_server_storage_tier
  sku_name                      = var.postgresql_flexible_server_sku_name
}

module "azure_postgresql_flexible_server_database" {
  source    = "./modules/azure_postgresql_flexible_server_database"

  name      = var.postgresql_flexible_server_database_name
  server_id = module.azure_postgresql_flexible_server.id
  collation = var.postgresql_flexible_server_database_collation
  charset   = var.postgresql_flexible_server_database_charset
}
