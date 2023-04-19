variable "az_subscription_id" { 

}
variable "az_tenant_id" { 

}
variable "az_client_id" { 

}
variable "az_client_secret" { 

}
variable "location" {
  description = "The location where the resource group, virtual network, and Kubernetes cluster will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "tags" {
  description = "Tags to apply to all resources."
  type        = map(string)
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
}

variable "address_space" {
  description = "The address space of the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
}

variable "address_prefixes" {
  description = "The address prefix of the subnet."
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
}

variable "dns_prefix" {
  description = "The DNS prefix for the Kubernetes cluster."
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