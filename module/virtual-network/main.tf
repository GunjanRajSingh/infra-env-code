resource "azurerm_virtual_network" "vnet-b" {
  for_each = var.child-vnet-v
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
}

#  dynamic "subnet" {
#   for_each = var.child-vnet-v
#   content {
#     name = each.value.subnet_name
#     address_prefixes = each.value.address_prefixes
#   }
#  }
# }

  