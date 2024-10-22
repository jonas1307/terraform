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

module "azure_postgresql_server" {
  source                       = "./modules/azure_postgresql_server"

  name                         = var.postgresql_server_name
  location                     = module.azure_resource_group.resource_group_location
  resource_group_name          = module.azure_resource_group.resource_group_name
  sku_name                     = var.postgresql_server_sku_name
  storage_mb                   = var.postgresql_server_storage_mb
  backup_retention_days        = var.postgresql_server_backup_retention_days
  geo_redundant_backup_enabled = var.postgresql_server_geo_redundant_backup_enabled
  auto_grow_enabled            = var.postgresql_server_auto_grow_enabled
  administrator_login          = var.postgresql_server_administrator_login
  administrator_login_password = var.postgresql_server_administrator_login_password
  server_version               = var.postgresql_server_version
  ssl_enforcement_enabled      = var.postgresql_server_ssl_enforcement_enabled
}

module "azure_postgresql_database" {
  source              = "./modules/azure_postgresql_database"

  name                = var.postgresql_database_name
  resource_group_name = module.azure_resource_group.resource_group_name
  server_name         = var.postgresql_server_name
  charset             = var.postgresql_database_charset
  collation           = var.postgresql_database_collation
}
