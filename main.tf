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
