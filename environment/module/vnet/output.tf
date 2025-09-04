output "vnet_name" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.name }
}
output "vnet_id" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.id }
}
output "vnet_address_space" {
  value = { for k, v in azurerm_virtual_network.vnet : k => v.address_space }
}
