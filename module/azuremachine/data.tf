data "azurerm_key_vault" "keyvault" {
  name                = "infrakeys11"
  resource_group_name = "vikrant"
}
data "azurerm_key_vault_secret" "username" {
  name         = "username"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}
data "azurerm_key_vault_secret" "password" {
  name         = "password"
  key_vault_id = data.azurerm_key_vault.keyvault.id
}