variable "landing_zones" {
  description = "Map of landing zones with their configurations"
  type = map(object({
    location                  = string
    subscription_display_name = string
    # subscription_billing_scope = string
    # subscription_alias_enabled = bool
    subscription_id = stgring
    virtual_networks          = map(object({
      name                 = string
      address_space        = list(string)
      location             = string
    #   hub_peering_enabled  = bool
    #   hub_network_resource_id = string
      mesh_peering_enabled = bool
    }))
  }))
}
