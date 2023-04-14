module "resource-group" {
  source = "./modules/resource-group"
  location = var.location
  resource_group_name = var.resource_group_name
}

module "virtual-network" {
  source = "./modules/virtual-network"
  location = module.resource-group.location
  resource_group_name = module.resource-group.name
  virtual_network_name = var.virtual_network_name
  address_space = var.address_space
}

module "subnet" {
  source = "./modules/subnet"
  virtual_network_name = module.virtual-network.name
  resource_group_name = module.resource-group.name
  subnet_names        = var.subnet_names
  address_prefixes     = var.address_prefixes
}
module "virtual-machine-1" {
  source = "./modules/virtual-machine"
  vm_names         = ["vm-server-dev-01", "vm-server-test-02"]
  location = module.resource-group.location
  resource_group_name = module.resource-group.name
  subnet_id = module.subnet.ids["snet-dev-eastus-01"]
  vm_size          = "Standard_B1s"
  admin_username   = "adminuser1"
  admin_password   = "hiz2dmzmBN"
  image_offer      = "UbuntuServer"
  image_publisher  = "Canonical"
  image_sku        = "18.04-LTS"
}
module "virtual-machine-2" {
  source = "./modules/virtual-machine"
  vm_names         = ["vm-hadoop-dev-03", "vm-hadoop-test-01"]
  location = module.resource-group.location
  resource_group_name = module.resource-group.name
  subnet_id = module.subnet.ids["snet-dev-eastus-02"]
  vm_size          = "Standard_B1s"
  admin_username   = "adminuser1"
  admin_password   = "hiz2dmzmBN"
  image_offer      = "UbuntuServer"
  image_publisher  = "Canonical"
  image_sku        = "18.04-LTS"
}
# module "keyvault" {
#   source                = "./modules/keyvault"
#   name                  = var.keyvault_name
#   resource_group_name   = module.resource_group.name
#   location              = var.location
#   sku_name              = var.keyvault_sku_name
# }