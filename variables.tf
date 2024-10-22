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

variable "postgresql_server_name" {
  description = "The name of the PostgreSQL server."
  type        = string
}

variable "postgresql_server_sku_name" {
  description = "The SKU name for the PostgreSQL server, defining performance levels."
  type        = string
}

variable "postgresql_server_storage_mb" {
  description = "The maximum storage for the PostgreSQL server in megabytes."
  type        = number
}

variable "postgresql_server_backup_retention_days" {
  description = "The number of days to retain backups for the PostgreSQL server."
  type        = number
}

variable "postgresql_server_geo_redundant_backup_enabled" {
  description = "Whether geo-redundant backups are enabled for the PostgreSQL server."
  type        = bool
}

variable "postgresql_server_auto_grow_enabled" {
  description = "Whether auto-grow is enabled for the PostgreSQL server storage."
  type        = bool
}

variable "postgresql_server_administrator_login" {
  description = "The administrator login name for the PostgreSQL server."
  type        = string
}

variable "postgresql_server_administrator_login_password" {
  description = "The administrator login password for the PostgreSQL server."
  type        = string
  sensitive   = true
}

variable "postgresql_server_version" {
  description = "The version of PostgreSQL to use for the server."
  type        = string
}

variable "postgresql_server_ssl_enforcement_enabled" {
  description = "Whether SSL enforcement is enabled for the PostgreSQL server."
  type        = bool
}

variable "postgresql_database_name" {
  description = "The name of the PostgreSQL database."
  type        = string
}

variable "postgresql_database_charset" {
  description = "The character set to use for the PostgreSQL database."
  type        = string
}

variable "postgresql_database_collation" {
  description = "The collation setting for the PostgreSQL database."
  type        = string
}
