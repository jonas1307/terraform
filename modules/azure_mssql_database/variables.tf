variable "name" {
  description = "The name of the SQL Database"
  type        = string
}

variable "server_id" {
  description = "The ID of the SQL Server on which the database will be created"
  type        = string
}

variable "collation" {
  description = "The collation of the SQL Database (e.g., 'SQL_Latin1_General_CP1_CI_AS')"
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "license_type" {
  description = "The license type to apply to this database (e.g., 'LicenseIncluded' or 'BasePrice')"
  type        = string
  default     = "LicenseIncluded"
}

variable "max_size_gb" {
  description = "The maximum size (in gigabytes) for the database"
  type        = number
  default     = 5
}

variable "sku_name" {
  description = "The SKU name for the SQL Database (e.g., 'S0', 'S1', 'P1', etc.)"
  type        = string
  default     = "S0"
}

variable "enclave_type" {
  description = "The enclave type for the database. Valid options are 'None' or 'Default'."
  type        = string
  default     = "None"
}
