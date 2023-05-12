output "app_service_plan_id" {
  value = azurerm_app_service_plan.appserviceplan.id
}

output "app_service_plan_name" {
  value = azurerm_app_service_plan.appserviceplan.name
}

output "app_service_plan_location" {
  value = azurerm_app_service_plan.appserviceplan.location
}

output "app_service_plan_sku_tier" {
  value = azurerm_app_service_plan.appserviceplan.sku[0].tier
}

output "app_service_plan_sku_size" {
  value = azurerm_app_service_plan.appserviceplan.sku[0].size
}
