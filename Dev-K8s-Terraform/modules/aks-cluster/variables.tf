variable "cluster_name" {

}
variable "location" {

}
variable "resource_group_name" {

}
variable "dns_prefix" {
    
}
variable "vnet_subnet_id" {

}
variable "tags" {
type = map(string)
}

variable "admin_username" {

}
variable "node_pool_name" {
  type = string
}

variable "node_vm_size" {
  type = string
}

variable "node_pool_node_count" {
  type = number
}

variable "node_os_disk_size_gb" {
  type = number
}
variable "ssh_public_key" {

}
variable "az_client_id" {

}
variable "az_client_secret" {

}