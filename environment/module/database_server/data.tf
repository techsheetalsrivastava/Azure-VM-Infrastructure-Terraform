# data "azurerm_key_vault_secret" "sql_username" {
#   name         = "sql-admin-username"
#   key_vault_id = var.vmc_keyvault_id
# }

# data "azurerm_key_vault_secret" "sql_password" {
#   name         = "sql-admin-password"
#   key_vault_id = var.vmc_keyvault_id
# }
# variable "vmc_keyvault_id" {
#   description = "The ID of the Azure Key Vault to retrieve secrets from"
#   type        = string
# }
