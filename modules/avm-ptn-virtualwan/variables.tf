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


variable "firewalls" {
  description = "Map of firewalls to configure Azure Firewall resources within hubs."
  type = map(object({
    virtual_hub_key      = string
    sku_name             = string
    sku_tier             = string
    threat_intel_mode    = optional(string)
    vhub_public_ip_count = optional(string)
    tags                 = optional(map(string))
    default_ip_configuration = optional(object({
      name = optional(string)
      public_ip_config = optional(object({
        name       = optional(list(string))
        ip_version = optional(string)
        sku_tier   = optional(string)
      }))
    }))
  }))
}

