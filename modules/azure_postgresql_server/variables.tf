variable "name" {
  description = "The name of the PostgreSQL server."
  type        = string
}

variable "location" {
  description = "The location where the PostgreSQL server will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the PostgreSQL server."
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the PostgreSQL server, defining performance levels."
  type        = string
}

variable "storage_mb" {
  description = "The maximum storage for the PostgreSQL server in megabytes."
  type        = number
}

variable "backup_retention_days" {
  description = "The number of days to retain backups for the PostgreSQL server."
  type        = number
}

variable "geo_redundant_backup_enabled" {
  description = "Whether geo-redundant backups are enabled for the PostgreSQL server."
  type        = bool
}

variable "auto_grow_enabled" {
  description = "Whether auto-grow is enabled for the PostgreSQL server storage."
  type        = bool
}

variable "administrator_login" {
  description = "The administrator login name for the PostgreSQL server."
  type        = string
}

variable "administrator_login_password" {
  description = "The administrator login password for the PostgreSQL server."
  type        = string
  sensitive   = true
}

variable "server_version" {
  description = "The version of PostgreSQL to use for the server."
  type        = string
}

variable "ssl_enforcement_enabled" {
  description = "Whether SSL enforcement is enabled for the PostgreSQL server."
  type        = bool
}
