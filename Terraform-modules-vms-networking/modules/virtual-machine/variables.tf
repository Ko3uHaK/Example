variable "vm_names" {
  type    = list(string)
}

variable "location" {
  type    = string
}

variable "resource_group_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}
variable "vm_size" {
  type = string
}
variable "image_publisher" {
  
}
variable "image_offer" {
  
}
variable "image_sku" {
  
}