variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

# VirtualWAN specific variables
variable "virtualwan_name" {
  description = "Name of the Virtual WAN"
  type        = string
}

