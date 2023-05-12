variable "name" {
  description = "Name of the App Service Plan."
  type        = string
}

variable "location" {
  description = "Location of the App Service Plan."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the App Service Plan should be created."
  type        = string
}

variable "sku_tier" {
  description = "SKU tier of the App Service Plan."
  type        = string
}

variable "sku_size" {
  description = "SKU size of the App Service Plan."
  type        = string
}

variable "kind" {
  description = "Kind of the App Service Plan."
  type        = string
}

variable "reserved" {
  description = "Whether the App Service Plan is reserved or not."
  type        = bool
}

variable "maximum_elastic_worker_count" {
  description = "The maximum number of workers to allocate when Elastic Scale is enabled."
  type        = number
  default     = null
}

variable "tags" {
  description = "Map of tags to be applied to the App Service Plan."
  type        = map(string)
  default     = {}
}
