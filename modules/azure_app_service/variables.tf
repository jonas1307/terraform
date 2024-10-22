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
