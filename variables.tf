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

variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
}

variable "sql_admin_username" {
  description = "SQL Server admin username"
  type        = string
}

variable "sql_admin_password" {
  description = "SQL Server admin password"
  type        = string
  sensitive   = true
}

variable "sql_database_name" {
  description = "The name of the SQL Database to be created"
  type        = string
}

variable "sql_database_collation" {
  description = "The collation of the SQL Database (e.g., 'SQL_Latin1_General_CP1_CI_AS')"
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "sql_database_license_type" {
  description = "The license type to apply to this database (e.g., 'LicenseIncluded' or 'BasePrice')"
  type        = string
  default     = "LicenseIncluded"
}

variable "sql_database_max_size_gb" {
  description = "The maximum size (in gigabytes) for the database"
  type        = number
  default     = 2
}

variable "sql_database_sku_name" {
  description = "The SKU name for the SQL Database (e.g., 'S0', 'S1', 'P1', etc.)"
  type        = string
  default     = "S0"
}

variable "sql_database_enclave_type" {
  description = "The enclave type for the database. Valid options are 'None' or 'Default'."
  type        = string
  default     = "None"
}

