variable "name" {
  description = "The name of the PostgreSQL flexible server."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the PostgreSQL flexible server."
  type        = string
}

variable "location" {
  description = "The location where the PostgreSQL flexible server will be created."
  type        = string
}

variable "server_version" {
  description = "The version of PostgreSQL to use for the flexible server."
  type        = string
}

variable "public_network_access_enabled" {
  description = "Define if public network access is enabled."
  type        = bool
}

variable "administrator_login" {
  description = "The administrator login name for the PostgreSQL flexible server."
  type        = string
}

variable "administrator_password" {
  description = "The administrator login password for the PostgreSQL flexible server."
  type        = string
  sensitive   = true
}

variable "storage_mb" {
  description = "The maximum storage size for the PostgreSQL flexible server in megabytes."
  type        = number
}

variable "storage_tier" {
  description = "The storage tier for the PostgreSQL flexible server (e.g., Standard, Premium)."
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the PostgreSQL flexible server, defining the performance level."
  type        = string
}
