module "resource_group" {
  source         = "../../module/azurerm_resourse_group"
  resource_group = var.resource_group

}
# module "storage_account" {
#   depends_on = [ module.resource_group ]
#   source               = "../../module/azurestorage"
#   storage_account_name = var.storage_account_name
# }
module "network" {
  depends_on = [module.resource_group ]
  source = "../../module/network"
  vnet   = var.vnet
}
module "machine" {
  depends_on = [ module.network ]
  source  = "../../module/azuremachine"
  machine = var.machine
}
module "sql_server" {
  depends_on = [ module.resource_group ]
  source      = "../../module/azuresqlserver"
  sql_server_list = var.sql_server_list
  
}
module "sql_database" {
  depends_on = [ module.sql_server  ]
  source     = "../../module/azuredblist"
  sql_database_list = var.sql_database_list
}