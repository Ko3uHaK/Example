
variable "resource_group_name" {
  description = "Name of the resource group where subnets will be created"
}

variable "virtual_network_name" {
  description = "Name of the virtual network where subnets will be created"
}

variable "subnet_names" {
  description = "Names of the subnets to be created"
  type        = list(string)
}

variable "address_prefixes" {
  description = "Address prefixes for the subnets"
  type        = list(string)
}