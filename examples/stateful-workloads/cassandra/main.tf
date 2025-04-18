resource "azurerm_key_vault_secret" "cassandra_password_file" {
  key_vault_id = var.key_vault_id
  name         = "cassandra-password-file"
  value        = <<EOF
    requirepass ${var.cassandra_password}
    primaryauth ${var.cassandra_password}
  EOF
}

resource "azurerm_key_vault_access_policy" "for_kv_secret_provider" {
  key_vault_id        = var.key_vault_id
  object_id           = var.object_id
  tenant_id           = var.tenant_id
  secret_permissions  = [
    "Get",
    "List",
    "Set",
  ]
}
