variable "azure_subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "service_plan_os_type" {
  description = "The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer. Changing this forces a new resource to be created."
  type        = string
}

variable "service_plan_sku_name" {
  description = "The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, I1v2, I2v2, I3v2, I4v2, I5v2, I6v2, P1v2, P2v2, P3v2, P0v3, P1v3, P2v3, P3v3, P1mv3, P2mv3, P3mv3, P4mv3, P5mv3, S1, S2, S3, SHARED, EP1, EP2, EP3, FC1, WS1, WS2, WS3, and Y1."
  type        = string
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
}

variable "app_service_aspnetcore_environment" {
  description = "The ASPNETCORE_ENVIRONMENT variable for the App Service"
  type        = string
}

variable "postgresql_flexible_server_name" {
  description = "The name of the PostgreSQL flexible server."
  type        = string
}

variable "postgresql_flexible_server_server_version" {
  description = "The version of PostgreSQL to use for the flexible server."
  type        = string
}

variable "postgresql_flexible_server_public_network_access_enabled" {
  description = "Specifies if public network access is enabled for the PostgreSQL flexible server."
  type        = bool
}

variable "postgresql_flexible_server_administrator_login" {
  description = "The administrator login name for the PostgreSQL flexible server."
  type        = string
}

variable "postgresql_flexible_server_administrator_password" {
  description = "The administrator login password for the PostgreSQL flexible server."
  type        = string
  sensitive   = true
}

variable "postgresql_flexible_server_storage_mb" {
  description = "The maximum storage size for the PostgreSQL flexible server in megabytes."
  type        = number
}

variable "postgresql_flexible_server_storage_tier" {
  description = "The storage tier for the PostgreSQL flexible server (e.g., Standard, Premium)."
  type        = string
}

variable "postgresql_flexible_server_sku_name" {
  description = "The SKU name for the PostgreSQL flexible server, defining the performance level."
  type        = string
}

variable "postgresql_flexible_server_database_name" {
  description = "The name of the PostgreSQL flexible server database."
  type        = string
}

variable "postgresql_flexible_server_database_collation" {
  description = "The collation setting for the PostgreSQL flexible server database."
  type        = string
}

variable "postgresql_flexible_server_database_charset" {
  description = "The character set to use for the PostgreSQL flexible server database."
  type        = string
}
