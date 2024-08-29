resource "azurerm_key_vault" "keyvault" {
  name                        = "my-key-vault"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  enabled_for_disk_encryption = true
  sku_name                    = "standard"
}

resource "azurerm_key_vault_secret" "secret" {
  name         = "my-secret"
  value        = "secret-value"
  key_vault_id = azurerm_key_vault.keyvault.id
}
