# provider.tf

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  version = "=2.79.1"
}

module "resource_group" {
  source = "./modules/resource_group"
  resource_group_name   = var.resource_group_name
  location = var.location
  tags = var.tags
}

module "storage_account" {
  source = "./modules/storage_account"
  name   = var.storage_account_name
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
  tags = var.tags
}

module "app_service_plan" {
  source = "./modules/app_service_plan"
  name   = var.app_service_plan_name
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  sku_tier = var.sku_tier
  sku_size = var.sku_size
  kind = var.kind
  reserved = var.reserved
  maximum_elastic_worker_count = var.maximum_elastic_worker_count
  tags = var.tags
}

module "function_app" {
  source = "./modules/function_app"
  app_name   = var.function_app_name
  linux_fx_version = var.linux_fx_version
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  function_app_service_plan_id = module.app_service_plan.id
  storage_account_name = module.storage_account.name
  storage_account_key = module.storage_account.primary_access_key
  app_settings = var.app_settings
  tags = var.tags
}

module "key_vault" {
  source = "./modules/key_vault"
  name = var.key_vault_name
  resource_group_name = module.resource_group.name
  location = module.resource_group.location
  access_policies = var.access_policies
  sku_name = var.sku_name
  soft_delete_enabled = var.soft_delete_enabled
  purge_protection_enabled = var.purge_protection_enabled
  tenant_id = var.tenant_id
}
