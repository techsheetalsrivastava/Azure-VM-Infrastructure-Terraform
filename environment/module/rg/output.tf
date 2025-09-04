output "rg_name" {
  value = { for k, v in azurerm_resource_group.rg : k => v.name }
}
output "rg_location" {
  value = { for k, v in azurerm_resource_group.rg : k => v.location }
}
output "rg_id" {
  value = { for k, v in azurerm_resource_group.rg : k => v.id }
}
