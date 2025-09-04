output "nsg_ids" {
  description = "IDs of the NSGs created"
  value       = { for key, nsg in azurerm_network_security_group.nsg : key => nsg.id }
}

output "nsg_names" {
  description = "Names of the NSGs created"
  value       = { for key, nsg in azurerm_network_security_group.nsg : key => nsg.name }
}
