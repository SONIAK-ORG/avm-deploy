# variables.tf

variable "resource_group_name" {
  description = "Virtual WAN Resource group name"
  type        = string
}

variable "location" {
  description = "Virtual WAN location"
  type        = string
}

variable "virtual_wan_name" {
  description = "Virtual WAN name"
  type        = string
}

variable "allow_branch_to_branch_traffic" {
  description = "Switch to flip VWAN branch to branch traffic"
  type        = bool
}


variable "virtual_hubs" {
  description = "Map of hubs to configure Azure Virtual WAN hubs in multiple regions."
  type = map(object({
    name               = string
    location           = string
    address_prefix     = string
    sku                = string
    routing_preference = string
  }))
}

