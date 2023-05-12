variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region location"
}

variable "app_name" {
  description = "Name of the function app"
}

variable "storage_account_name" {
  description = "Name of the storage account"
}

variable "storage_account_key" {
  description = "Access key for the storage account"
}

variable "function_app_service_plan_id" {
  description = "ID of the Function App Service Plan"
}

variable "linux_fx_version" {
  type        = string
  description = "Specifies the version of Linux to be used for the Function App"
}


variable "app_settings" {
  description = "Map of app settings to configure the Function App"
  type = map(string)
}

variable "identity_type" {
  description = "Type of identity to assign to the Function App"
  default = "SystemAssigned"
}

variable "tags" {
  description = "Map of tags to assign to all resources"
  type = map(string)
  default = {}
}
