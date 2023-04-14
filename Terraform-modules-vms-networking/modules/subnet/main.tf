resource "azurerm_subnet" "subnets" {
  count               = length(var.subnet_names)
  name                = var.subnet_names[count.index]
  address_prefixes      = [var.address_prefixes[count.index]]
  resource_group_name = var.resource_group_name
  virtual_network_name= var.virtual_network_name
}