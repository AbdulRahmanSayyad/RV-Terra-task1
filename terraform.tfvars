subscription_id = "your-subscription-id"
client_id = "your-client-id"
client_secret = "your-client-secret"
tenant_id = "your-tenant-id"
resource_group_name = "your-resource-group-name"
location = "your-location"
storage_account_name = "your-storage-account-name"
account_tier = "Standard"
account_replication_type = "LRS"
app_service_plan_name = "your-app-service-plan-name"
sku_tier = "Standard"
sku_size = "S1"
kind = "app"
reserved = true
maximum_elastic_worker_count = 20
function_app_name = "your-function-app-name"
linux_fx_version = "3.0"
app_settings = {
  "setting1" = "value1",
  "setting2" = "value2"
}
key_vault_name = "your-key-vault-name"
access_policies = [
  {
    tenant_id = "access-policy-tenant-id"
    object_id = "access-policy-object-id"
    secret_permissions = [
      "get",
      "list"
    ]
  }
]
sku_name = "standard"
soft_delete_enabled = true
purge_protection_enabled = true
