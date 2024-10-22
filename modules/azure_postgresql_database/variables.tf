variable "name" {
  description = "The name of the PostgreSQL database."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group containing the PostgreSQL database."
  type        = string
}

variable "server_name" {
  description = "The name of the PostgreSQL server hosting the database."
  type        = string
}

variable "charset" {
  description = "The character set to use for the PostgreSQL database."
  type        = string
}

variable "collation" {
  description = "The collation setting for the PostgreSQL database."
  type        = string
}
