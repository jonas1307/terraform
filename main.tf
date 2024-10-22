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

  name                = var.app_service_name
  location            = module.azure_resource_group.resource_group_location
  resource_group_name = module.azure_resource_group.resource_group_name
  service_plan_id     = module.azure_service_plan.service_plan_id
}

module "azure_mssql_server" {
  source              = "./modules/azure_mssql_server"

  name                = var.sql_server_name
  location            = module.azure_resource_group.resource_group_location
  resource_group_name = module.azure_resource_group.resource_group_name
  admin_username      = var.sql_admin_username
  admin_password      = var.sql_admin_password
}

module "azure_mssql_database" {
  source       = "./modules/azure_mssql_database"

  name         = var.sql_database_name
  server_id    = module.azure_mssql_server.sql_server_server_id
  collation    = var.sql_database_collation
  license_type = var.sql_database_license_type
  max_size_gb  = var.sql_database_max_size_gb
  sku_name     = var.sql_database_sku_name
  enclave_type = var.sql_database_enclave_type
}
