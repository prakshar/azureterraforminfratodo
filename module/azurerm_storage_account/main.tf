resource "azurerm_storage_account" "stg" {
  for_each = var.stg
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location 
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  account_kind = each.value.account_kind
  access_tier = each.value.access_tier
  public_network_access_enabled = each.value.public_network_access_enabled

  tags = each.value.tags
}


  



