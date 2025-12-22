module "azurerm_resource_group" {
    source = "../../module/azurerm_resource_group"
    rgs = var.rgs
}

module "azurerm_storage_account" {
    depends_on = [ module.azurerm_resource_group ]
  source = "../../module/azurerm_storage_account"
  stg = var.stg
}

module "azurerm_public_ip" {
  depends_on = [ module.azurerm_resource_group ]
  source = "../../module/azurerm_public_ip"
  pips = var.pips

}

module "azurerm_virtual_network" {
  depends_on = [ module.azurerm_resource_group ]
  source = "../../module/azurerm_virtual_network"
  vns = var.vns
  subnets = var.subnets
  
}
