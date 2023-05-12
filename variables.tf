variable "subscription_id" {
  type        = string
  description = "The Azure subscription ID"
}

variable "client_id" {
  type        = string
  description = "The Azure client ID"
}

variable "client_secret" {
  type        = string
  description = "The Azure client secret"
}

variable "tenant_id" {
  type        = string
  description = "The Azure tenant ID"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group to create"
}

variable "location" {
  type        = string
  description = "The Azure region to use for resources"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to resources"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account to create"
}

variable "account_tier" {
  type        = string
  description = "The storage account tier"
}

variable "account_replication_type" {
  type        = string
  description = "The type of replication to use for the storage account"
}

variable "app_service_plan_name" {
  type        = string
  description = "The name of the App Service Plan to create"
}

variable "sku_tier" {
  type        = string
  description = "The SKU tier of the App Service Plan"
}

variable "sku_size" {
  type        = string
  description = "The SKU size of the App Service Plan"
}

variable "kind" {
  type        = string
  description = "The kind of App Service Plan"
}

variable "reserved" {
  type        = bool
  description = "Whether to reserve the App Service Plan"
}

variable "maximum_elastic_worker_count" {
  type        = number
  description = "The maximum number of elastic workers to use"
}

variable "function_app_name" {
  type        = string
  description = "The name of the Function App to create"
}

variable "app_settings" {
  type        = map(string)
  description = "A map of app settings to apply to the Function App"
}

# Key Vault
variable "key_vault_name" {
  type        = string
  description = "The name of the Key Vault to create"
}

variable "access_policies" {
  type        = list(object({
    object_id       = string
    secret_permissions = list(string)
    key_permissions    = list(string)
  }))
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the Key Vault"
}

variable "soft_delete_enabled" {
  type        = bool
  description = "Whether soft delete is enabled for the Key Vault"
}

variable "purge_protection_enabled" {
  type        = bool
  description = "Whether purge protection is enabled for the Key Vault"
}

variable "linux_fx_version" {
  type        = string
  description = "Specifies the version of Linux to be used for the Function App"
}
