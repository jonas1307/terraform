resource "azurerm_linux_web_app" "app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id
  https_only          = true

  app_settings = {
    ASPNETCORE_ENVIRONMENT               = var.aspnetcore_environment
    ConnectionStrings__DefaultConnection = var.postgresql_connection_string
  }

  site_config {
    always_on = false

    application_stack {
      dotnet_version = var.dotnet_version
    }
  }
}
