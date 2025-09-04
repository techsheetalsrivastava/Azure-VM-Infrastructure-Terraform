# resource "azurerm_mssql_server" "sqlserver" {
#   for_each = var.vmc_db

#   name                         = each.value.server_name
#   location                     = each.value.location
#   resource_group_name          = each.value.resource_group_name
#   version                      = "12.0"
#   administrator_login          = data.azurerm_key_vault_secret.sql_username.value
#   administrator_login_password = data.azurerm_key_vault_secret.sql_password.value
# }

# resource "azurerm_mssql_database" "sqldb" {
#   for_each   = var.vmc_db

#   name       = each.value.db_name
#   server_id  = azurerm_mssql_server.sqlserver[each.key].id
#   collation  = "SQL_Latin1_General_CP1_CI_AS"
#   sku_name   = "Basic"
# }
