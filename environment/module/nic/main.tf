# resource "azurerm_network_interface" "nic" {
#   for_each            = var.vmc_nic
#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name
#   ip_configuration {
#     name                          = each.value.ip_configuration_name
#     subnet_id                     = each.value.subnet_id
#     private_ip_address_allocation = each.value.private_ip_address_allocation
#     public_ip_address_id          = each.value.public_ip_address_id
#   }
# }
resource "azurerm_network_interface" "nic" {
  for_each            = var.vmc_nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
  }
}

