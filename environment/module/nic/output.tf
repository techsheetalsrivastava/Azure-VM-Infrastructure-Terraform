output "nic_ids" {
  description = "IDs of all NICs"
  value       = { for k, nic in azurerm_network_interface.nic : k => nic.id }
}
