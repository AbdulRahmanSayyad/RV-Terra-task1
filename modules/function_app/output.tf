output "function_app_id" {
  value = azurerm_function_app.linux_function_app.id
}

output "function_app_name" {
  value = azurerm_function_app.linux_function_app.name
}

output "function_app_default_hostname" {
  value = azurerm_function_app.linux_function_app.default_hostname
}

output "function_app_outbound_ip_addresses" {
  value = azurerm_function_app.linux_function_app.outbound_ip_addresses
}

output "function_app_identity_principal_id" {
  value = azurerm_function_app.linux_function_app.identity[0].principal_id
}

output "function_app_identity_client_id" {
  value = azurerm_function_app.linux_function_app.identity[0].client_id
}
