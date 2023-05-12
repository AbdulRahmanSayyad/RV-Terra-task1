variable "name" {
  description = "The name of the keyvault."
  type        = string
}

variable "location" {
  description = "The location where the keyvault will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group to which the keyvault will belong."
  type        = string
}

variable "sku_name" {
  description = "The name of the SKU used for the keyvault."
  type        = string
}

variable "soft_delete_enabled" {
  description = "Whether soft delete is enabled for the keyvault."
  type        = bool
}

variable "purge_protection_enabled" {
  description = "Whether purge protection is enabled for the keyvault."
  type        = bool
}

variable "tenant_id" {
  description = "The ID of the Azure Active Directory tenant associated with the keyvault."
  type        = string
}

variable "access_policies" {
  description = "A list of access policies to be created for the keyvault."
  type        = list(object({
    tenant_id               = string
    object_id               = string
    key_permissions         = list(string)
    secret_permissions      = list(string)
    certificate_permissions = list(string)
  }))
}

