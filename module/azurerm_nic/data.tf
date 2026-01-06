data "azurerm_public_ip" "pips" {
  for_each = var.nic
  name                = each.value.pipname
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "subnets" {
  for_each             = var.nic
  name                 = each.value.subnetname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}