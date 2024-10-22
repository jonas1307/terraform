provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
}

module "azure_resource_group" {
  source = "./modules/azure_resource_group"

  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
}
