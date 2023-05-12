variable "name" {
  type        = string
  description = "The name of the storage account."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the storage account."
}

variable "location" {
  type        = string
  description = "The location of the storage account."
}

variable "account_tier" {
  type        = string
  description = "The storage account tier. Standard or Premium."
}

variable "account_replication_type" {
  type        = string
  description = "The storage account replication type. LRS, GRS, RAGRS, or ZRS."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
}


