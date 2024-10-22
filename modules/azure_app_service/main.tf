resource "azurerm_linux_web_app" "app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  app_settings = {
    ASPNETCORE_ENVIRONMENT = "Development"
  }

  site_config {
    always_on = false

    application_stack {
      dotnet_version = "8.0"
    }
  }
}
