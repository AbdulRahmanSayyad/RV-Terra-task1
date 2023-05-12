resource "azurerm_function_app" "linux_function_app" {
  name                      = var.app_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  app_service_plan_id       = var.function_app_service_plan_id
  storage_account_name      = var.storage_account_name
  storage_account_access_key = var.storage_account_key

  site_config {
    linux_fx_version = var.linux_fx_version
  }

  identity {
    type = var.identity_type
  }

  app_settings = merge(
    {
      WEBSITE_NODE_DEFAULT_VERSION = "~14"
    },
    var.app_settings
  )

  tags = var.tags
}
