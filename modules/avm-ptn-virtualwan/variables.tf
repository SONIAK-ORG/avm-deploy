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



 variable "hub_virtual_networks" {
   description = "Configuration for hub virtual networks."
   type = map(object({
     name                            = string
     address_space                   = list(string)
     location                        = string
     resource_group_name             = string
     resource_group_creation_enabled = bool
     firewall = object({
       sku_name              = string
       sku_tier              = string
       subnet_address_prefix = string
     })
     subnets = map(object({
       name             = string
       address_prefixes = list(string)
     }))
   }))
 }
