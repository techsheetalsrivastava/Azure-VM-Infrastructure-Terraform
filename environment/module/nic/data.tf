# data "azurerm_subnet" "subnet" {
#   for_each = var.vmc_subnet
#   name                 = each.value.name
#   resource_group_name  = each.value.resource_group_name
#   virtual_network_name = each.value.virtual_network_name
# }
# data "azurerm_public_ip" "pip" {
#   for_each = var.vmc_nic
#   name                = each.value.name
#   resource_group_name = each.value.resource_group_name
# }

# data "azurerm_public_ip" "pip" {
#   for_each = var.vmc_nic

#   name                = each.value.public_ip_name
#   resource_group_name = each.value.resource_group_name
# }
# data "azurerm_subnet" "subnet" {
#   for_each = var.vmc_nic

#   name                 = each.value.subnet_name
#   virtual_network_name = each.value.virtual_network_name
#   resource_group_name  = each.value.resource_group_name
# }

data "azurerm_public_ip" "pip" {
  for_each = var.vmc_nic

  name                = each.value.pip_name       # <- changed to match parent
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "subnet" {
  for_each = var.vmc_nic

  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name      # <- changed to match parent
  resource_group_name  = each.value.resource_group_name
}

# data "azurerm_network_interface" "selected" {
#   name                = "vm1-nic"
#   resource_group_name = "vm-rg1"
# }       

