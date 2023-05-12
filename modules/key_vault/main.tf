data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = var.sku_name

  soft_delete_enabled        = var.soft_delete_enabled
  purge_protection_enabled   = var.purge_protection_enabled
  enable_rbac_authorization = true

  tenant_id = var.tenant_id

  access_policy {
    tenant_id               = data.azurerm_client_config.current.tenant_id
    object_id               = data.azurerm_client_config.current.object_id
    key_permissions         = ["get", "list", "create", "update", "delete", "import", "backup", "restore"]
    secret_permissions      = ["get", "list", "set", "delete", "backup", "restore"]
    certificate_permissions = ["get", "list", "create", "delete", "import", "update", "managecontacts", "getissuers", "listissuers", "setissuers", "deleteissuers", "manageissuers", "recover"]
  }

  dynamic "access_policy" {
    for_each = var.access_policies
    content {
      tenant_id               = access_policy.value.tenant_id
      object_id               = access_policy.value.object_id
      key_permissions         = access_policy.value.key_permissions
      secret_permissions      = access_policy.value.secret_permissions
      certificate_permissions = access_policy.value.certificate_permissions
    }
  }
}
