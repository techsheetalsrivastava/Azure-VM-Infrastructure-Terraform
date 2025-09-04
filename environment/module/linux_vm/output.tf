output "vm_ids" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.id }
}

output "vm_private_ips" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.private_ip_address }
}

output "vm_public_ips" {
  value = { for k, v in azurerm_linux_virtual_machine.vm : k => v.public_ip_address }
}
