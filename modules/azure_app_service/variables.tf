variable "name" {
  description = "The name of the App Service"
  type        = string
}

variable "location" {
  description = "The location where the App Service will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the Service Plan"
  type        = string
}

variable "aspnetcore_environment" {
  description = "The ASPNETCORE_ENVIRONMENT variable for the App Service"
  type        = string
}

variable "dotnet_version" {
  description = "The .NET version to use for the application stack (e.g., 8.0, 9.0, 10.0)."
  type        = string
  default     = "10.0"
}

variable "postgresql_connection_string" {
  description = "The PostgreSQL connection string injected as ConnectionStrings__DefaultConnection."
  type        = string
  sensitive   = true
}
