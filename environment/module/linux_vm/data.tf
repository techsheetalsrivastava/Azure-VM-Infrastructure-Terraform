# data "azurerm_key_vault" "example" {
#   name                = "your-keyvault-name"
#   resource_group_name = "vm-rg1"
# }

# data "azurerm_key_vault_secret" "admin_user" {
#   name         = "vm-admin-user"
#   key_vault_id = data.azurerm_key_vault.example.id
# }

# data "azurerm_key_vault_secret" "admin_pass" {
#   name         = "vm-admin-pass"
#   key_vault_id = data.azurerm_key_vault.example.id
# }
