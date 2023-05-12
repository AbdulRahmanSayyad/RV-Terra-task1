resource "azurerm_storage_account" "storage_account" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = var.tags

  enable_https_traffic_only = true

  lifecycle {
    prevent_destroy = true
  }

  depends_on = [var.resource_group_name]
}

