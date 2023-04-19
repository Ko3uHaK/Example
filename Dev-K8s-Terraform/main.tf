module "resource-group" {
  source = "./modules/resource-group"
  location = var.location
  resource_group_name = var.resource_group_name
  tags = var.tags
}
module "virtual-network" {
  source = "./modules/virtual-network"
  location = module.resource-group.location
  resource_group_name = module.resource-group.name
  tags = module.resource-group.tags
  virtual_network_name = var.virtual_network_name
  address_space = var.address_space
      depends_on = [
    module.resource-group
  ]
}
module "subnet" {
  source = "./modules/subnet"
  subnet_name = var.subnet_name
  address_prefixes = var.address_prefixes
  resource_group_name = module.resource-group.name
  virtual_network_name = module.virtual-network.virtual_network_name
      depends_on = [
    module.virtual-network
  ]
}
module "aks-cluster" {
  source = "./modules/aks-cluster"
  cluster_name = var.cluster_name
  location = module.resource-group.location
  resource_group_name = module.resource-group.name
  dns_prefix = var.dns_prefix
  ssh_public_key = var.ssh_public_key
  admin_username = var.admin_username
  node_pool_name = var.node_pool_name
  node_vm_size = var.node_vm_size
  node_pool_node_count = var.node_pool_node_count
  node_os_disk_size_gb = var.node_os_disk_size_gb
  vnet_subnet_id = module.subnet.subnet_id
  az_client_id = var.az_client_id
  az_client_secret = var.az_client_secret
  tags = module.resource-group.tags
    depends_on = [
    module.subnet
  ]
}