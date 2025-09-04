variable "vmp_rg" {
  type        = map(any)
  description = "this is my resource group name for vm"
}
variable "vmp_vnet" {
  type        = map(any)
  description = "this is my virtual network for vm"
}
variable "vmp_subnet" {
  type        = map(any)
  description = "this is my subnet for vm"
}
# variable "vmp_pip" {
#   type = map(any)
#   description = "this is my pip for virtual machine of child"
# }
variable "vmp_publicip" {
  type        = map(any)
  description = "this is my public ip for vm"
}
variable "vmp_nic" {
  type        = map(any)
  description = "this is my nic name for vm"
}
variable "vmp_nsg" {
  type        = map(any)
  description = "this is my nsg for vm"
}
# variable "vmp_db" {
#   type        = map(any)
#   description = "this is my database for vm"
# }
# variable "vmp_keyvaults" {
#   type        = map(any)
#   description = "this is my database for vm"
# }
# variable "vmp_kv_secrets" {
#   description = "Map of secrets to be created in Key Vaults"
#   type        = map(any)
# }
variable "vmp_vm" {
  type        = map(any)
  description = "Linux VM values for each instance"
}





