output "public_ip_ids" {
  value = { for k, v in azurerm_public_ip.pip : k => v.id }
}

output "public_ip_addresses" {
  value = { for k, v in azurerm_public_ip.pip : k => v.ip_address }
}
