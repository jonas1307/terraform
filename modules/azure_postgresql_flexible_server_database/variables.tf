variable "name" {
  description = "The name of the PostgreSQL flexible server database."
  type        = string
}

variable "server_id" {
  description = "The ID of the PostgreSQL flexible server that hosts the database."
  type        = string
}

variable "collation" {
  description = "The collation setting for the PostgreSQL flexible server database."
  type        = string
}

variable "charset" {
  description = "The character set to use for the PostgreSQL flexible server database."
  type        = string
}
