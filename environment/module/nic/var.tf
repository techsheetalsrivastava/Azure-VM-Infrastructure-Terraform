# variable "vmc_nic" {
#   type        = map(any)
#   description = "this is my nic name for vm"  
# }
# variable "vmc_subnet" {
#   type        = map(any)
#   description = "this is my nic name for vm"  
# }
variable "vmc_nic" {
  type        = map(any)
  description = "This is my nic for VM"
}
# variable "public_ips" {
#   type = map(object({
#     name      : string
#     location  : string
#     rg        : string
#   }))
# }

# variable "subnets" {
#   type = map(object({
#     name      : string
#     vnet_name : string
#     rg        : string
#   }))
# }



