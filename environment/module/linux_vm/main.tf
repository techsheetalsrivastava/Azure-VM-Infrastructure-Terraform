resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.vmp_vm

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group
  size                = each.value.size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password

  network_interface_ids = [
    each.value.nic_id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
