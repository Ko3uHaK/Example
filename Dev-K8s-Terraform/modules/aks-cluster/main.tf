resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  
  linux_profile {
    admin_username = var.admin_username
          ssh_key {
        key_data = file(var.ssh_public_key)
    }
  }

    default_node_pool {
    name            = var.node_pool_name
    vm_size         = var.node_vm_size
    node_count      = var.node_pool_node_count
    os_disk_size_gb = var.node_os_disk_size_gb
  }
  tags = var.tags
    service_principal {
    client_id     = var.az_client_id
    client_secret = var.az_client_secret
  }
}