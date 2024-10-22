variable "name" {
  description = "The name of the SQL Server"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the SQL Server"
  type        = string
}

variable "admin_username" {
  description = "The administrator username"
  type        = string
}

variable "admin_password" {
  description = "The administrator password"
  type        = string
  sensitive   = true
}
