# variable "vmc_pip" {
#   type = map(any)
#   description = "this is my pip for virtual machine of child"
# }
variable "vmc_publicip" {
  type        = map(any)
  description = "This is my public IP for VM"
}
