variable "agent_count" {
  default = 2
}

variable "cluster_name" {
  default = "Daniil_k8s_test"
}

variable "dns_prefix"  {
  default = "Daniil-k8s-test"
}

# Refer to https://azure.microsoft.com/global-infrastructure/services/?products=monitor for available Log Analytics regions.
variable "log_analytics_workspace_location" {
  default = "eastus"
}

variable "log_analytics_workspace_name" {
  default = "testLogAnalyticsWorkspaceName"
}

# Refer to https://azure.microsoft.com/pricing/details/monitor/ for Log Analytics pricing
variable "log_analytics_workspace_sku" {
  default = "PerGB2018"
}

variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  default     = "Daniil1"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "az_subscription_id" { 
  default = ""
}
variable "az_tenant_id" { 
  default = ""
}
variable "az_client_id" { 
  default = ""
}
variable "az_client_secret" { 
  default = ""
}

