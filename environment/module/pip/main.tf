# resource "azurerm_public_ip" "pip" {
#     for_each = var.vmc_pip
#   name                = each.value.name
#   resource_group_name = each.value.resource_group_name
#   location            = each.value.location
#   allocation_method   = each.value.allocation_method
# }
resource "azurerm_public_ip" "pip" {
  for_each = var.vmc_publicip

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}
