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
    name                 = optional(string)
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


# variable "vpn_gateways" {
#   description = "S2S VPN Gateway parameters."
#   type = map(object({
#     name                                  = string
#     virtual_hub_key                       = string
#     tags                                  = optional(map(string))
#     bgp_route_translation_for_nat_enabled = optional(bool)
#     bgp_settings = optional(object({
#       asn = number
#       instance_0_bgp_peering_address = optional(object({
#         custom_ips = list(string)
#       }))
#       instance_1_bgp_peering_address = optional(object({
#         custom_ips = list(string)
#       }))
#       peer_weight = number
#     }))
#     routing_preference = optional(string)
#     scale_unit         = optional(number)
#   }))
# }
