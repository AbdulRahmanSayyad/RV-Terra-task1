resource "azurerm_app_service_plan" "appserviceplan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }

  kind              = var.kind
  reserved          = var.reserved
  maximum_elastic_worker_count = var.maximum_elastic_worker_count

  tags = var.tags
}