module "rg" {
  source = "../module/rg"
  vmc_rg = var.vmp_rg
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../module/vnet"
  vmc_vnet   = var.vmp_vnet
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../module/subnet"
  vmc_subnet = var.vmp_subnet
}

module "publicip" {
  depends_on   = [module.rg]
  source       = "../module/pip"
  vmc_publicip = var.vmp_publicip
}

module "nic" {
  depends_on = [module.subnet, module.publicip]
  source     = "../module/nic"
  vmc_nic    = var.vmp_nic
}


module "nsg" {
  depends_on = [module.rg]
  source     = "../module/nsg"
  vmc_nsg    = var.vmp_nsg
}

# module "db" {
#   depends_on = [module.rg]
#   source     = "../module/database_server"
#   vmc_db     = var.vmp_db
# }
# module "db" {
#   depends_on      = [module.keyvault, module.keyvault_secret]
#   source          = "../module/database_server"
#   vmc_db          = var.vmp_db
#   vmc_keyvault_id = module.keyvault.keyvault_id
# }



# module "database_server" {
#   source  = "../module/database_server"
#   vmc_db  = var.vmp_db
# }


# module "keyvault" {
#   depends_on = [module.rg]
#   source     = "../module/keyvault"
#   keyvaults  = var.vmp_keyvaults
# }


# module "kv_secrets" {
#   depends_on  = [module.keyvault]
#   source      = "../module/keyvault_secret"
#     # Add your existing variables here

#   secrets = var.vmp_kv_secrets
# }

# module "db" {
#   depends_on      = [module.keyvault, module.kv_secrets]   # 👈 sahi module name
#   source          = "../module/database_server"
#   vmc_db          = var.vmp_db
#   keyvault_id     = module.keyvault.keyvault_id
#   vmc_keyvault_id = module.keyvault.keyvault_id
#   secrets         = module.kv_secrets.secrets
# }


# # -------------------------
# # Read secrets back from KV
# # -------------------------
# data "azurerm_key_vault_secret" "admin_user" {
#   name         = "sql-admin-username"
#   key_vault_id = module.keyvault.keyvault_ids["kv1"]
# }

# data "azurerm_key_vault_secret" "admin_pass" {
#   name         = "sql-admin-password"
#   key_vault_id = module.keyvault.keyvault_ids["kv1"]
# }

# # -------------------------
# # Virtual Machine
# # -------------------------
module "vm" {
  depends_on = [module.nic]
  source     = "../module/linux_vm"

  vmp_vm = {
    for k, v in var.vmp_vm : k => merge(v, {
      nic_id         = module.nic.nic_ids[k]   # yaha key use karo
      resource_group = module.rg.rg_name[k]   # RG module se output
    })
  }
}

