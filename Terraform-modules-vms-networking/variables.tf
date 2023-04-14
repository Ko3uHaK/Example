
variable "az_subscription_id" { 

}
variable "az_tenant_id" { 

}
variable "az_client_id" { 

}
variable "az_client_secret" { 

}
variable "location" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "virtual_network_name" {
  type = string
}
variable "address_space" {
  type = list(string)
}
variable "subnet_names" {
  type = list(string)
}
variable "address_prefixes" {
  type = list(string)
}