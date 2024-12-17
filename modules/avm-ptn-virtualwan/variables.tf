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


variable "hubs" {
  description = "Map of hubs to configure Azure Virtual WAN hubs in multiple regions."
  type = map(object({
    location           = string
    hub_address_prefix = string
    sku                = string
    routing_preference = string
  }))

  default = {
    primary-hub = {
      location              = "East US"
      hub_address_prefix    = "10.0.0.0/24"
      sku                   = "Standard"
      routing_preference    = "Microsoft Network"
    }

    secondary-hub = {
      location              = "West US"
      hub_address_prefix    = "10.1.0.0/24"
      sku                   = "Standard"
      routing_preference    = "Microsoft Network"
    }
  }
}

