# # variable "keyvaults" {
# #   description = "A map of key vault configurations"
# #   type        = map(object({
# #     name            = string
# #     location        = string
# #     resource_group  = string
# #   }))
# # }

# resource "azurerm_key_vault" "kv" {
#   for_each                    = var.keyvaults

#   name                        = each.value.name
#   location                    = each.value.location
#   resource_group_name         = each.value.resource_group
#   tenant_id                   = data.azurerm_client_config.current.tenant_id
#   sku_name                    = "standard"
#   purge_protection_enabled    = true

#   access_policy {
#     tenant_id = data.azurerm_client_config.current.tenant_id
#     object_id = data.azurerm_client_config.current.object_id

#     secret_permissions = [
#       "Get", "List", "Set", "Delete"
#     ]
#   }
# }
