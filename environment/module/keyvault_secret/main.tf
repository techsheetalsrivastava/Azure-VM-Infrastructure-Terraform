# resource "azurerm_key_vault_secret" "secrets" {
#   for_each     = var.secrets

#   name         = each.key
#   value        = each.value.value
#   key_vault_id = each.value.keyvault_id
# }
